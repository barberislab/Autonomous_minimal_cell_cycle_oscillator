import dspace
import scipy
import numpy as np
import pandas as pd
from random import shuffle
import math
import re
import traceback
import time
import os
from scipy.signal import find_peaks

from importlib import import_module

from cycler import cycler
import matplotlib.pyplot as plt
SMALL_SIZE = 16
MEDIUM_SIZE = 20
BIGGER_SIZE = 24
plt.rc('font', size=SMALL_SIZE)          # controls default text sizes
plt.rc('axes', titlesize=BIGGER_SIZE)     # fontsize of the axes title
plt.rc('axes', labelsize=BIGGER_SIZE)    # fontsize of the x and y labels
plt.rc('xtick', labelsize=MEDIUM_SIZE)    # fontsize of the tick labels
plt.rc('ytick', labelsize=MEDIUM_SIZE)    # fontsize of the tick labels
plt.rc('legend', fontsize=SMALL_SIZE)    # legend fontsize
plt.rc('figure', titlesize=BIGGER_SIZE)  # fontsize of the figure title

def merge_two_dicts(x, y):
    z = x.copy()   # start with x's keys and values
    z.update(y)    # modifies z with y's keys and values & returns None
    return z

def round_down(num,digits):
    factor = 10.0 ** digits
    return math.floor(num * factor) / factor

def round_up(num,digits):
    factor = 10.0 ** digits
    return math.ceil(num * factor) / factor

def lognuniform(low=0, high=1, size=None, base=np.exp(1)):
    '''Takes low and high, log transformed points, and returns 
    uniform samples in the logarithmic space and returns
    them in regular space. '''
    
    return np.power(base, np.random.uniform(low, high, size))

# genral model integrator
def int_model(scipy_model, jacobian, initial_cond, start_t,end_t,num_steps):
    ### INTEGREATE THE MODEL
    ## FIRST SET UP THE INTEGRATOR
    # http://scipy.github.io/old-wiki/pages/NumPy_for_Matlab_Users
    r1 = scipy.integrate.ode(scipy_model).set_integrator('dopri5',nsteps=2000) #ode45, optional argument: nsteps=1000
    r2 = scipy.integrate.ode(scipy_model).set_integrator('vode', method='bdf',order=15) # ode15s
    r3 = scipy.integrate.ode(scipy_model).set_integrator('lsoda',rtol=1e-7, atol=1e-8)
    methods = [r3,r2,r1] # the fastest order

    # Additional Python step: create vectors to store trajectories
    t = np.zeros((num_steps, 1))
    sys = np.zeros((num_steps, len(initial_cond)))
    t[0] = start_t
    sys[0] = initial_cond
    
    # time
    t_steps  = np.linspace(start_t,end_t,num_steps)
    delta_t = t_steps[1] - t_steps[0]

    for r in methods:
        #r.jac = jacobian
        r.set_initial_value(initial_cond, start_t)
        
        # Integrate the ODE(s) across each delta_t timestep
        k = 1
        while r.successful() and k < num_steps:
            r.integrate(r.t + delta_t)

            # Store the results to plot later
            t[k] = r.t
            sys[k] = r.y
            k += 1
        
        flag = r.successful()
        
        # if integration worked return the output
        # if not try a new method unless we have tried all of them already
        if flag:
            break
    
    return t, sys, flag

def draw_time_course(t,x,ds,savepath,peak_props,varnames):
    fig = plt.figure()
    
    fig.set_size_inches(14.,7)
    ax = fig.add_axes([0.1, 0.1, 0.7, 0.7])
    plt.gca().set_prop_cycle(cycler('color',['k', 'r', 'b', 'g']))

    ax.plot(t, np.transpose([x[v] for v in sorted(x.keys())]))
    for y in sorted(x.keys()):
        peak_t = peak_props['peaks time'][y]
        peak_x = peak_props['peaks conc'][y]
        plt.plot(peak_t, peak_x, "k*")
    _=ax.set_xlabel('$t$ (min)')
    _=ax.set_ylabel('Concentration (a.u.)')

    plt.legend([varnames[v] for v in sorted(x.keys())],loc='upper right')
    
    fig.savefig(savepath+'full_time_course.eps', dpi=200, bbox_inches='tight')
    plt.close()
        
    ### Unnormalized time course for the last 3 periods (roughly)
    if len(peak_props['peaks time'][x.keys()[0]]) >= 3: # make sure there are at least 3 peaks
        fig = plt.figure()
        fig.set_size_inches(14.,7)
        ax = fig.add_axes([0.1, 0.1, 0.7, 0.7])
        plt.gca().set_prop_cycle(cycler('color',['k', 'r', 'b', 'g']))

        t_start = peak_props['peaks time'][x.keys()[0]][-3] # 3rd to last peak of the first concentration as the starting point
        t_start_idx = np.where(t == t_start)[0][0] # where returns a tuple (first [0]) and then an array of indices (second [0])
        ax.plot(t[t_start_idx:], np.transpose([x[v] for v in sorted(x.keys())])[t_start_idx:])
        _=ax.set_xlabel('$t$ [min.]')
        _=ax.set_ylabel('Concentration [a.u.]')

        plt.legend([varnames[v] for v in sorted(x.keys())],loc='upper right')

        fig.savefig(savepath+'last_3_periods_time_course.eps', dpi=200, bbox_inches='tight')

        plt.close()

def draw_single_pheno_samples(ds, pheno_str, pvals_orig, x_par, y_par, range_x_vis, range_y_vis, df_samples):
    color_dict = {pheno_str: (0, 1., 0.4, 0.5),}

    # plot the samples on the phenotype plot
    fig = plt.figure()
    fig.set_size_inches(12,6)
    ax = plt.gca()
    cdict = ds.draw_2D_slice(ax, pvals_orig, x_par, y_par, range_x_vis, range_y_vis, colorbar=False, color_dict=color_dict,
                            included_cases=[pheno_str])

    # plot the parameter set in the region
    points = []; symb = []
    for index, row in df_samples.iterrows():
        pvals = row['Parameters']
        # method = row['Method']

        # determine plot symbol
        if row['Oscillates']:
            symb = 'o'
            ms = 8
        else:
            symb = '.'
            ms = 5


        symb = 'k'+symb

        _=ax.plot(np.log10(pvals[x_par]), np.log10(pvals[y_par]), symb, markersize=ms)

    plt.show()
    
    return fig

def count_parameter_occurence(ds, pheno_list):
    re_str = r'\+|\-|\.=|=|\*|\^[0-9]+\.[0-9]+|\^[0-9]|\^\-[0-9]|[0-9]+\.[0-9]+|0='

    # get ODE equations
    sys = ds.equations.system

    # list all parameters
    count_dict = {}
    parameters = []
    for i, eq in enumerate(sys):
        eq_elements = re.split(re_str, eq)

        if len(eq_elements) > 1:
            eq_elements = [el for el in eq_elements if el not in ds.dependent_variables and el != '']

        parameters.extend(eq_elements)

    parameters = list(set(parameters)) # no duplicates

    # set up dictionary
    for par in parameters:
        count_dict[par] = {'equations':[], 'count':0}

    # identify in which ODE each parameter occurs
    for par in parameters:
        for i, eq in enumerate(sys):
            if par in eq:
                count_dict[par]['equations'].append(i)


    ### count occurence
    # set up count dictionary
    for pheno in pheno_list:
        sys = ds(pheno).equations.system # get pheno system (subset of the complete one)

        # for each parameter get the ODEs it occurs in and add + 1
        for par in count_dict:
            for i in count_dict[par]['equations']:
                eq = sys[i]

                eq_elements = re.split(re_str, eq)

                if par in eq_elements:
                    count_dict[par]['count'] += 1
                    break # do not count multiple occurences

    for par in count_dict:
        del count_dict[par]['equations']

    return pd.DataFrame(count_dict).transpose().sort_values('count',ascending=False).transpose()


def find_all_peaks(x,t):
    # return dictionaries
    flags = {}
    props = {}
    
    # subdictionaries for properties of the peaks
    props['peaks conc'] = {}
    props['peaks time'] = {}
    props['oscillation amplitude'] = {}
    props['abs max'] = []
    
    # LC peaks do not have to repeat with each peak being equally high
    # a LC may consist of multiple peaks with different heights in sequence and repeat that sequence
    # additionally, the time steps in the solver might "miss" the real peak sometimes
    # We have to be a bit lenient: repeating peaks should be within 5% of the highest point in the time course
    # this also rules out dampening oscillations: unless they dampen very slowly
    tol = 0.05 # 5% check for issues below
    threshold_number_peaks = 5 # number of repeating peaks we minimally want in the limit cycle time course
    
    # start with true flags and try to falsify based on tc
    flags['oscillation'] = True
    flags['repeating oscillation'] = True
    flags['limit cycle'] = True 
    flags['dampening oscillation'] = False
    for y in x: # loop over the state variables
        tc = x[y] # time course
        
        # global extrema
        abs_min = np.min(tc)
        abs_max = np.max(tc)
        props['abs max'].append(abs_max)
        
        props['oscillation amplitude'][y] = abs_min/abs_max
        
        # oscillations should oscillate in atleast 10% of their max. level for each species
        if props['oscillation amplitude'][y] > 0.9:
            flags['oscillation'] = False
        
        ### find all local maxima that are close enough to the global maximum
        # height sets the lower bound for the value of the peak
        # distance sets the number steps minimally between extrema
        # thresholds the minimal vertical distance from peak to surrounding points
        peaks, y_props = find_peaks(tc, height=(1.0-tol)*abs_max, distance=3, threshold=1e-9) 
        
        # "peaks" contains indices of local maxima
        props['peaks time'][y] = t[peaks] # shift time based on previous integration steps
        props['peaks conc'][y] = y_props['peak_heights']

        if len(peaks) < threshold_number_peaks: # oscillation needs to repeat several times
            flags['repeating oscillation'] = False
    
    props['Min. Amplitude (min/max)'] = max([props['oscillation amplitude'][y] for y in x])
    
    # set flag for steady state based on almost unchanging concentrations
    flags['steady state'] = all([props['oscillation amplitude'][k] > 0.99 for k in props['oscillation amplitude']])  
    
    flags['scale difference'] = max(props['abs max'])/min(props['abs max']) < 100
    
    # if the last peak occurs very far from the end of the integration window then the oscillation is dying out
    # since we require > threshold_number_peaks, the period is at most t[-1]/threshold_number_peaks
    # if the last peak is further back then a single max. period we have a problem
    # ALSO: if the peak concentrations are decreasing from beginning to end this is dampening
    # or reverse for oscillations that are blowing up
    # set the tolerance for change to 1%: we want stable oscillations
    for y in x:
        if len(props['peaks time'][y]) >= 1:
            if (t[-1] - props['peaks time'][y][-1]) > t[-1]/float(threshold_number_peaks):
                flags['dampening oscillation'] = True
    
    # determine if this is not a limit cycle
    if not (flags['oscillation'] and flags['repeating oscillation'] and not flags['steady state'] and \
           flags['scale difference'] and not flags['dampening oscillation']):
        flags['limit cycle'] = False 
        
    if flags['limit cycle']: # otherwise there is no point 
        ### identify period
        median_periods = {}
        for y in x:
            # there are at least threshold_number_peaks peaks with almost equal height (LC supposedly)
            # to skip relaxation bias only look at those last threshold_number_peaks
            period_list_y = [props['peaks time'][y][i] - props['peaks time'][y][i-1] for i in range(len(props['peaks time'][y])-threshold_number_peaks+1,len(props['peaks time'][y]))]
            median_periods[y] = np.median(period_list_y) # the median removes some of the bias due to failure to detect one intermittent peak
            
        # check consistency: all mean periods should not differ more than 1%
        median_periods_list = [median_periods[y] for y in median_periods]  
        props['period'] = min(median_periods_list) # take the minimum
            
        ### Identify peak sequence
        # NOTE: we look only at the last series of peaks
        # list times of peak for each species
        seq_times = {}
        for y in x:
            seq_times[y] = props['peaks time'][y][-1] # this might go wrong if the last peak was somehow not detected as a peak

        # order the variables based on peak time
        variable_peak_sequence = sorted(seq_times, key=seq_times.__getitem__)
        variable_peak_sequence = ', '.join(variable_peak_sequence)
        props['peak sequence'] = variable_peak_sequence
    
    return flags, props
        
def check_oscillation(scipy_model, pvals, initial_conditions, ds):
    '''Calculate model time course in several steps. First for a limited amount of time to rule out quick steady state behavior.
    Then, for incrementally for longer times to find long-term behavior. For all steps we integrate the equations and then start the integration again using the last time point as the initial condition. This is used to remove initial, non steady state behavior from the analyses that checks if a repeating oscillations has occured.'''
    
    # 1.5 steps per "unit time" for the first 500 minutes
    # 1.25 for the next 1500
    # 1 for the next 3000 
    # 0.75 for the next 5000
    time_design = [[50,75],[50,75],[100,150],[300,450],
                   [500,625],[1000,1250],
                   [3000,3000],
                   [5000,3750]]
    
    ###############################################################################
    # loop until any of the checks fails or we have simulated all time lengths
    ###############################################################################
    randseq = np.random.randint(0,10,size=10)

    for i,time_setting in enumerate(time_design):
        
        # Simulate time course
        x, t, flag = scipy_model(pvals,initial_conditions,0,time_setting[0],time_setting[1])
        
        # make sure the integration was successful
        if not flag:
            return False, None, None, None, None
        
        # update the full trajectory that was simulated over multiple integration steps
        if i==0:
            total_x = {}
            total_t = t
            for y in x:
                total_x[y] = x[y]
            t_new = np.array([s[0] for s in t])
            x_new = x
                
        else: # exclude first point which is a repeat
            t_new = np.array([s+total_t[-1] for s in t][1:]) # shift the time steps for continuation
            total_t = np.append(total_t,t_new)
            x_new = {}
            for y in x:
                x_new[y] = x[y][1:]
                total_x[y] = np.append(total_x[y],x[y][1:])
                
        
        # find peaks in trajectory
        # stop simulation if
        # - LC is found
        # - steady state is found
        # - concentrations are drifting too far apart
        peak_flags, peak_props = find_all_peaks(x_new,t_new)
        if peak_flags['limit cycle']: # LC found
            # print '\nLimit cycle found. In integration step', i, '\nProperties:', peak_flags, '\n'
            return True, total_t, total_x, initial_conditions, peak_props
        else:
            # rule out stable steady state behavior
            if peak_flags['steady state']:
                return False, None, None, None, None
            
            # stop simulating if concentrations are too far apart
            # this often involves blowup of one parameter
            if i > 0: # give the simulation time to get over initial conditions
                if not peak_flags['scale difference']:
                    return False, None, None, None, None
            
            # update IC
            initial_conditions = {i:x[i][-1] for i in x} # use last point as initial condition
    
    return False, None, None, None, None


def process_check_plot_pset(scipy_model, pheno, pvals, IC, subdf_LC_samples, parbounds, ds, modelID, varnames, plot_LC=True, loguniform=True):
    '''Given a parameter set and IC run check_oscillation to find out if the parameter set yields oscillations.'''

    samples = {} # will hold the sampling results

    # For some reason IC gets overridden by the function below so make a copy
    ICout = IC.copy()

    # identify whether the time course in the model oscillates
    for aux_var in pheno.auxiliary_variables:
        _=IC.pop(aux_var)

    oscillates, t, x, initial_conditions, peak_props = check_oscillation(scipy_model,pvals,IC,ds)

    if oscillates: # add to LC dataframe and plot time course   
        # save to LC dataframe
        if len(subdf_LC_samples) > 0:
            LC_n = max(subdf_LC_samples.index) + 1
        else:
            LC_n = 1
        LC_series = pd.Series({'Parameters':pvals,'IC':ICout,'Peak sequence':peak_props['peak sequence'],
                               'Period':peak_props['period'], 
                               'Min. Amplitude (min/max)':peak_props['Min. Amplitude (min/max)'] },name=LC_n)
        subdf_LC_samples = subdf_LC_samples.append(LC_series)
        
        # plot time course
        if plot_LC:
            # make folder for this limit cycle
            cwd = os.getcwd()
            dirname = cwd+'/../LCs/'+modelID+'/'+pheno.case_number+'/'+str(LC_n)+'/'
            if not os.path.exists(os.path.dirname(dirname)):
                os.makedirs(dirname)
            draw_time_course(t,x,ds,dirname,peak_props,varnames)
    
    return subdf_LC_samples

def random_sample_phenotype(pheno,parbounds,loguniform=True):
    '''Return a random parameter set within the phenotype and a consistent initial condition. '''
    
    # start from the first valid parameter set
    pvals = pheno.valid_parameter_set()

    flag = True # becomes false if we find a succesfull parameterset
    while flag:
        # randomize the order of sampling the parameters
        sorted_pars = pvals.keys()
        shuffle(sorted_pars)
        
        # randomize further (to avoid initial deteriministic point bias) by resampling some parameters at random
        num_to_resample = np.random.randint(len(pvals))
        sorted_pars = sorted_pars + sorted_pars[:num_to_resample] # resample from the start

        # Random sampling
        for i,p in enumerate(sorted_pars[:]): 
            # measure tolerance again after each sample
            vert = pheno.vertices_1D_slice(pvals, p)
            vert = [x[0] for x in vert]
            
            if len(vert) < 2: # probably indicates only a single point is valid; skip these cases
                continue

            # limit sample region to phenotype and parameter bounds
            a = max(vert[0], parbounds[p][0])
            b = min(vert[1], parbounds[p][1])

            # it could occur that the vertex is suddenly outside of parameter bounds
            # example: vert = [5000, 1e20] while parbounds = [1e-6,1e3]
            if vert[0] > parbounds[p][1] or vert[1] < parbounds[p][0]:
                #print 'Vertex and parbounds do not overlap:', vert, parbounds[p]
                continue

            # sample (log)uniformly in this region
            if loguniform:
                alog = np.log10(a)
                blog = np.log10(b)
                sample = lognuniform(alog, blog, 1, base=10) 
            else:
                sample = np.random.uniform(a,b,1)

            pvals[p] = sample


        IC = pheno.steady_state(pvals)

        pset_state = merge_two_dicts(pvals, IC)
        if not pheno.is_consistent(pset_state):
            #print 'inconsistent state.'
            continue
        else:
            flag = False # break the loop we found a parameterset
        
    return pvals, IC


def update_stability(row,d):
    '''Given new samples updates the Boolean oscillatory potential (2 complex conjugate eigenvalues with positive real part)
    and counts the number of times we found those'''

    pheno = row.name
        
    currently_true = row['Oscillatory potential'] 
    if pheno in d:
        now_true = d[pheno]['Oscillatory potential']
    else:
        now_true = False

    row['Oscillatory potential'] = currently_true or now_true
    if now_true:
        row['Complex conjugate sample count'] += 1
    
    return row

def load_model_variables(model):
    # scipy
    mod = import_module('model_definitions')
    scipy_model = getattr(mod, 'scipy_'+model)

    # scipy parameters
    pset = getattr(mod, 'pset_'+model)
    variables = getattr(mod, 'variables_'+model)
    y0 = getattr(mod, 'y0_'+model)

    # SDS model
    f = getattr(mod, 'SDS_'+model)
    constraints = getattr(mod, 'constraints_'+model)
    parbounds = getattr(mod, 'parbounds_'+model)
    latex_symbols = getattr(mod, 'latex_symbols_'+model)
    varnames = getattr(mod, 'varnames_'+model)
    
    # make sure the model folder exists
    cwd = os.getcwd()
    dirname = cwd+'/../LCs/'+model+'/'
    if not os.path.exists(os.path.dirname(dirname)):
        os.makedirs(dirname)  
        
    return scipy_model, pset, variables, y0, f, constraints, parbounds, latex_symbols, varnames



def build_analyse_design_space(model, f, constraints, latex_symbols):
    ### build design space ###
    eq = dspace.Equations(f)
    if constraints != []:
        ds = dspace.DesignSpace(eq, constraints=constraints, latex_symbols=latex_symbols) 
    else:
        ds = dspace.DesignSpace(eq, latex_symbols=latex_symbols)
    
    ### Analyse and save basic properties ###
    props = {}
    props['signature'] = ds.signature
    props['number of phenotypes'] = float(ds.number_of_cases)
    props['independent variables'] = ds.independent_variables
    props['dependent variables'] = ds.dependent_variables
    
    ### Find valid cases and save them ###
    path_to_valid_cases = '../LCs/'+model+'/valid_cases.txt'
    if os.path.exists(path_to_valid_cases):
        with open('../LCs/'+model+'/valid_cases.txt') as f:
            valid_cases = f.read().splitlines()
    else:
        valid_cases = ds.valid_cases()
        thefile = open('../LCs/'+model+'/valid_cases.txt', 'w')
        for item in valid_cases:
            thefile.write("%s\n" % item)
        thefile.close()
        
    props['number of valid phenotypes'] = len(valid_cases)
    
    ### save properties ###
    with open('../LCs/'+model+'/model_properties.txt', 'w') as file:
        file.write(str(props))
        
    ### Save parameter occurence for valid cases
    path_to_p_occurence = '../LCs/'+model+'/Parameter_occurence_phenotypes_valid.xlsx'
    if not os.path.exists(path_to_p_occurence):
        parcount = count_parameter_occurence(ds, valid_cases)
        parcount.to_excel(path_to_p_occurence)

    return ds, valid_cases