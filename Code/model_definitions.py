import numpy as np
import scipy
import math
from time import time
from utils import int_model


##############################################
# lomnitz2015 NPJ
##############################################
def scipy_lomnitz2015(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        X1,X2,X3,X4 = state
    
        X1p = a1 * ( (rho1**-1 + (X2/K2A)**2 + rho1**-1*(X4/K4)**2) / (1 + (X2/K2A)**2 + (X4/K4)**2) ) - b1*X1
        X2p = a2*X1 - b2*X2
        X3p = a3*( (rho3**-1 + (X2/K2R)**2) / (1 + (X2/K2R)**2) ) - b3*X3
        X4p = a4*X3-b4*X4

        return [X1p,X2p,X3p,X4p]
    
    # Parameters
    parlist = ['a1','a2','a3','a4','b1','b2','b3','b4','rho1','rho3','K2A','K2R','K4']
    a1,a2,a3,a4,b1,b2,b3,b4,rho1,rho3,K2A,K2R,K4 = [par[k] for k in parlist]

    variables = ['X1','X2','X3','X4']
    initial_cond = [initial_cond[k] for k in variables]
    
    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_lomnitz2015 = ['X1','X2','X3','X4']
varnames_lomnitz2015 = {'X1':'X_1','X2':'X_2','X3':'X_3','X4':'X_4'}

y0_lomnitz2015 = {k:0 for k in variables_lomnitz2015}
parlist_lomnitz2015 = ['a1','a2','a3','a4','b1','b2','b3','b4','rho1','rho3','K2A','K2R','K4']
pset_lomnitz2015 = [1]*len(parlist_lomnitz2015)
pset_lomnitz2015 = {parlist_lomnitz2015[i]:pset_lomnitz2015[i] for i in range(len(pset_lomnitz2015))}


SDS_lomnitz2015 = ['X1. = a1*rho1^-1*X5^-1 \
                       + a1*X2^2*K2A^-2*X5^-1 \
                       + a1*rho1^-1*X4^2*K4^-2*X5^-1 - b1*X1',
                    'X2. = a2*X1 - b2*X2',
                    'X3. = a3*rho3^-1*X6^-1 + a3*X2^2*K2R^-2*X6^-1 - b3*X3',
                    'X4. = a4*X3 - b4*X4',
                    'X5 = 1 + X2^2*K2A^-2 + X4^2*K4^-2',
                    'X6 = 1 + X2^2*K2R^-2'
                    ]

constraints_lomnitz2015 = ['rho1 > 1', 'rho3 > 1']

latex_symbols_lomnitz2015 = {'X1':'X_1',
                   'X2':'X_2',
                   'X3':'X_3',
                   'X4':'X_4',
                   'X5':'X_5',
                   'X6':'X_6',
                   'a1':r'\alpha_1',
                   'a2':r'\alpha_2',
                   'a3':r'\alpha_3',
                   'a4':r'\alpha_4',
                   'b1':r'\beta_1',
                   'b2':r'\beta_2',
                   'b3':r'\beta_3',
                   'b4':r'\beta_4',
                   'rho1':r'\rho_1',
                   'rho3':r'\rho_3',
                   'K2R':'K_{2R}',
                   'K2A':'K_{2A}',
                   'K4':'K_4'}

# lower bounds of 0 but constrain upper bounds
# allow the complex formation to be much larger than other parameters 
# constrain basal synthesis more than the rest
parbounds_lomnitz2015 = {p:[0,1e3] for p in parlist_lomnitz2015}


##############################################
# Design_1A
##############################################
def scipy_design_1A(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,sx,sy,sz,s = state

        # equations
        clb_free = x + y + z;
        clb_complex = sx + sy + sz;
        
        xdot = v_x - b_x * x - kp * s * x + km * sx + d * sx * clb_free + l * sx;
        ydot = v_y - b_y * y - kp * s * y + km * sy + a_xy * x;
        zdot = v_z - b_z * z - kp * s * z + km * sz + a_xz * x + a_yz * y + a_zz * z;
        
        sxdot = kp * s * x - km * sx - d * sx * clb_free - l * sx - e * sx;
        sydot = kp * s * y - km * sy - d * sy * clb_free - l * sy - e * sy;
        szdot = kp * s * z - km * sz - d * sz * clb_free - l * sz - e * sz;
        
        sdot = v_s - b_s * s - kp * s * clb_free + km * clb_complex;   
 
        return [xdot,ydot,zdot,sxdot,sydot,szdot,sdot]
    
    # Parameters
    parlist = ['v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','l','e',
               'a_xy','a_xz','a_yz','a_zz',]
    v_x,v_y,v_z,v_s,kp,km,b_x,b_y,b_z,b_s,d,l,e,\
    a_xy,a_xz,a_yz,a_zz = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','sx','sy','sz','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_1A = ['x','y','z','sx','sy','sz','s']
varnames_design_1A = {'x':'Clb5','y':'Clb3','z':'Clb2','sx':'Sic1-Clb5','sy':'Sic1-Clb3','sz':'Sic1-Clb2','s':'Sic1'}
y0_design_1A = {'x':0, 'y':0, 'z':0,'sx':0,'sy':0,'sz':0,'s':5}
pset_design_1A = [ 0.1, 0.01, 0.001, 0.3, 20, 1, 0.7, 0.7, 0.7, 0.001, 0.05, 0.05, 0.01,
                    1, 0.1, 1, 0.1]
parlist_design_1A = ['v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','l','e',
                       'a_xy','a_xz','a_yz','a_zz']
pset_design_1A = {parlist_design_1A[i]:pset_design_1A[i] for i in range(len(pset_design_1A))}


SDS_design_1A = [
    'x. = v_x - b_x * x - kp * s * x + km * sx + d * sx * clb_free + l * sx',
    'y. = v_y - b_y * y - kp * s * y + km * sy + a_xy * x',
    'z. = v_z - b_z * z - kp * s * z + km * sz + a_xz * x + a_yz * y + a_zz * z',
    'sx. = kp * s * x - km * sx - d * sx * clb_free - l * sx - e * sx',
    'sy. = kp * s * y - km * sy - d * sy * clb_free - l * sy - e * sy',
    'sz. = kp * s * z - km * sz - d * sz * clb_free - l * sz - e * sz',
    's. = v_s - b_s * s - kp * s * clb_free + km * clb_complex',
    'clb_free = x + y + z',
    'clb_complex = sx + sy + sz']

constraints_design_1A = []


latex_symbols_design_1A = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','kp':r'k^+','km':r'k^-','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_zz':r'\alpha_{zz}',
                           'clb_free':'clb_{free}', 'clb_fcomplex':'clb_{complex}'}

parbounds_design_1A = {p:[1e-9,1e3] for p in parlist_design_1A}





##############################################
# Design_1B
##############################################
def scipy_design_1B(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,sx,sy,sz,s = state

        # equations
        clb_free = x + y + z;
        clb_complex = sx + sy + sz;
        
        xdot = v_x - b_x * x - kp * s * x + km * sx - g_yx * x * y - g_zx * x * z + d * sx * clb_free + l * sx;
        ydot = v_y - b_y * y - kp * s * y + km * sy + a_xy * x + a_yy * y - g_yy * y**2 - g_zy * z * y;
        zdot = v_z - b_z * z - kp * s * z + km * sz + a_xz * x + a_yz * y + a_zz * z - g_zz * z**2 ;
        
        sxdot = kp * s * x - km * sx - d * sx * clb_free - l * sx - e * sx;
        sydot = kp * s * y - km * sy - d * sy * clb_free - l * sy - e * sy;
        szdot = kp * s * z - km * sz - d * sz * clb_free - l * sz - e * sz;
        
        sdot = v_s - b_s * s - kp * s * clb_free + km * clb_complex;   

        return [xdot,ydot,zdot,sxdot,sydot,szdot,sdot]
    
    def jacobian(t,state):
        x,y,z,sx,sy,sz,s = state
        
        # equations
        clb_free = x + y + z;
        clb_complex = sx + sy + sz;
        
        j = [[-b_x -kp*s -g_yx*y -g_zx*z +d*sx, -g_yx*x +d*sx, -g_zx*x +d*sx, km + d*clb_free + l, 0, 0, -kp*x],
             [a_xy, -b_y -kp*s +a_yy -2*g_yy*y -g_zy*z, -g_zy*y, 0, km, 0, -kp*y],
             [a_xz, a_yz, -b_z -kp*s + a_zz -2*g_zz*z, 0, 0, km, -kp*z],
             [kp*s -d*sx, -d*sx, -d*sx, -km -d*clb_free -l -e, 0, 0, kp*x],
             [-d*sy, kp*s -d*sy, -d*sy, 0, -km -d*clb_free -l -e, 0, kp*y],
             [-d*sz, -d*sz, kp*s -d*sz, 0, 0, -km -d*clb_free -l -e, kp*z],
             [-kp*s, -kp*s, -kp*s, km, km, km, -b_s -kp*clb_free]
            ]

        return j
    
    # Parameters
    parlist = ['v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','l','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz']
    v_x,v_y,v_z,v_s,kp,km,b_x,b_y,b_z,b_s,d,l,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','sx','sy','sz','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_1B = ['x','y','z','sx','sy','sz','s']
varnames_design_1B = {'x':'Clb5','y':'Clb3','z':'Clb2','sx':'Sic1-Clb5','sy':'Sic1-Clb3','sz':'Sic1-Clb2','s':'Sic1'}
y0_design_1B = {'x':0, 'y':0, 'z':0,'sx':0,'sy':0,'sz':0,'s':5}
pset_design_1B = [ 0.1, 0.01, 0.001, 0.3, 20, 0.5, 0.7, 0.7, 0.7, 0.001, 0.05, 0.05, 0.01,
                    1, 0.1, 1, 0.1, 0.1,
                    0.7, 0.7, 0.7, 0.7, 0.7]

parlist_design_1B = ['v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','l','e',
           'a_xy','a_xz','a_yz','a_yy','a_zz',
           'g_yx','g_zx','g_zy','g_yy','g_zz']
pset_design_1B = {parlist_design_1B[i]:pset_design_1B[i] for i in range(len(pset_design_1B))}


SDS_design_1B = [
    'x. = v_x - b_x * x - kp * s * x + km * sx - g_yx * x * y - g_zx * x * z + d * sx * clb_free + l * sx',
    'y. = v_y - b_y * y - kp * s * y + km * sy + a_xy * x + a_yy * y - g_yy * y^2 - g_zy * z * y',
    'z. = v_z - b_z * z - kp * s * z + km * sz + a_xz * x + a_yz * y + a_zz * z - g_zz * z^2',
    'sx. = kp * s * x - km * sx - d * sx * clb_free - l * sx - e * sx',
    'sy. = kp * s * y - km * sy - d * sy * clb_free - l * sy - e * sy',
    'sz. = kp * s * z - km * sz - d * sz * clb_free - l * sz - e * sz',
    's. = v_s - b_s * s - kp * s * clb_free + km * clb_complex',
    'clb_free = x + y + z',
    'clb_complex = sx + sy + sz']

constraints_design_1B = []


latex_symbols_design_1B = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','kp':r'k^+','km':r'k^-','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                           'clb_free':'clb_{free}', 'clb_fcomplex':'clb_{complex}'}

parbounds_design_1B = {p:[1e-9,1e3] for p in parlist_design_1B}


##############################################
# Design_1C
##############################################
def scipy_design_1C(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,sx,sy,sz,s = state

        # equations
        clb_free = x + y + z;
        clb_complex = sx + sy + sz;
        
        xdot = v_x - b_x * x - kp * s * x + km * sx - g_yx * x * y - g_zx * x * z + d * sx * clb_free;
        ydot = v_y - b_y * y - kp * s * y + km * sy + a_xy * x + a_yy * y - g_yy * y**2 - g_zy * z * y;
        zdot = v_z - b_z * z - kp * s * z + km * sz + a_xz * x + a_yz * y + a_zz * z - g_zz * z**2 ;
        
        sxdot = kp * s * x - km * sx - d * sx * clb_free - e * sx;
        sydot = kp * s * y - km * sy - d * sy * clb_free - e * sy;
        szdot = kp * s * z - km * sz - d * sz * clb_free - e * sz;
        
        sdot = v_s - b_s * s - kp * s * clb_free + km * clb_complex;  

        return [xdot,ydot,zdot,sxdot,sydot,szdot,sdot]
    
    # Parameters
    parlist = ['v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz']
    v_x,v_y,v_z,v_s,kp,km,b_x,b_y,b_z,b_s,d,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','sx','sy','sz','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_1C = ['x','y','z','sx','sy','sz','s']
varnames_design_1C = {'x':'Clb5','y':'Clb3','z':'Clb2','sx':'Sic1-Clb5','sy':'Sic1-Clb3','sz':'Sic1-Clb2','s':'Sic1'}
y0_design_1C = {'x':0, 'y':0, 'z':0,'sx':0,'sy':0,'sz':0,'s':5}
pset_design_1C = [ 0.1, 0.01, 0.001, 0.18, 20, 0.5, 0.7, 0.7, 0.7, 0.003, 0.1, 0.005,
                    1, 0.1, 1, 0.1, 0.1,
                    0.7, 0.7, 0.7, 0.7, 0.7]
parlist_design_1C = ['v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','e',
           'a_xy','a_xz','a_yz','a_yy','a_zz',
           'g_yx','g_zx','g_zy','g_yy','g_zz']
pset_design_1C = {parlist_design_1C[i]:pset_design_1C[i] for i in range(len(pset_design_1C))}


SDS_design_1C = [
    'x. = v_x - b_x * x - kp * s * x + km * sx - g_yx * x * y - g_zx * x * z + d * sx * clb_free',
    'y. = v_y - b_y * y - kp * s * y + km * sy + a_xy * x + a_yy * y - g_yy * y^2 - g_zy * z * y',
    'z. = v_z - b_z * z - kp * s * z + km * sz + a_xz * x + a_yz * y + a_zz * z - g_zz * z^2',
    'sx. = kp * s * x - km * sx - d * sx * clb_free - e * sx',
    'sy. = kp * s * y - km * sy - d * sy * clb_free - e * sy',
    'sz. = kp * s * z - km * sz - d * sz * clb_free - e * sz',
    's. = v_s - b_s * s - kp * s * clb_free + km * clb_complex',
    'clb_free = x + y + z',
    'clb_complex = sx + sy + sz']

constraints_design_1C = []


latex_symbols_design_1C = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','kp':r'k^+','km':r'k^-','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                           'clb_free':'clb_{free}', 'clb_fcomplex':'clb_{complex}'}

parbounds_design_1C = {p:[1e-9,1e3] for p in parlist_design_1C}



##############################################
# Design_2
##############################################
def scipy_design_2(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,sx,sy,sz,s = state

        # equations
        clb_free = x + y + z;
        clb_complex = sx + sy + sz;
        
        xdot = v_x - b_x * x - kp * s * x + km * sx - g_yx * x * y - g_zx * x * z + d * sx * clb_free;
        ydot = v_y - b_y * y - kp * s * y + km * sy + a_xy * x + a_yy * y - g_yy * y**2 - g_zy * z * y + d * sy * clb_free;
        zdot = v_z - b_z * z - kp * s * z + km * sz + a_xz * x + a_yz * y + a_zz * z - g_zz * z**2 + d * sz * clb_free;
        
        sxdot = kp * s * x - km * sx - d * sx * clb_free - e * sx;
        sydot = kp * s * y - km * sy - d * sy * clb_free - e * sy;
        szdot = kp * s * z - km * sz - d * sz * clb_free - e * sz;
        
        sdot = v_s - b_s * s - kp * s * clb_free + km * clb_complex;  

        return [xdot,ydot,zdot,sxdot,sydot,szdot,sdot]
    
    # Parameters
    parlist = ['v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz']
    v_x,v_y,v_z,v_s,kp,km,b_x,b_y,b_z,b_s,d,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','sx','sy','sz','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_2 = ['x','y','z','sx','sy','sz','s']
varnames_design_2 = {'x':'Clb5','y':'Clb3','z':'Clb2','sx':'Sic1-Clb5','sy':'Sic1-Clb3','sz':'Sic1-Clb2','s':'Sic1'}
y0_design_2 = {'x':0, 'y':0, 'z':0,'sx':0,'sy':0,'sz':0,'s':5}
pset_design_2 = [ 0.09, 0.01, 0.001, 0.2, 20, 0.5, 0.7, 0.7, 0.7, 0.005, 0.05, 0.005,
                    1, 0.1, 1, 0.1, 0.1,
                    0.7, 0.7, 0.7, 0.7, 0.7]
parlist_design_2 = ['v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','e',
                   'a_xy','a_xz','a_yz','a_yy','a_zz',
                   'g_yx','g_zx','g_zy','g_yy','g_zz']
pset_design_2 = {parlist_design_2[i]:pset_design_2[i] for i in range(len(pset_design_2))}


SDS_design_2 = [
    'x. = v_x - b_x * x - kp * s * x + km * sx - g_yx * x * y - g_zx * x * z + d * sx * clb_free',
    'y. = v_y - b_y * y - kp * s * y + km * sy + a_xy * x + a_yy * y - g_yy * y^2 - g_zy * z * y + d * sy * clb_free',
    'z. = v_z - b_z * z - kp * s * z + km * sz + a_xz * x + a_yz * y + a_zz * z - g_zz * z^2 + d * sz * clb_free',
    'sx. = kp * s * x - km * sx - d * sx * clb_free - e * sx',
    'sy. = kp * s * y - km * sy - d * sy * clb_free - e * sy',
    'sz. = kp * s * z - km * sz - d * sz * clb_free - e * sz',
    's. = v_s - b_s * s - kp * s * clb_free + km * clb_complex',
    'clb_free = x + y + z',
    'clb_complex = sx + sy + sz']

constraints_design_2 = []


latex_symbols_design_2 = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','kp':r'k^+','km':r'k^-','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                          'clb_free':'clb_{free}', 'clb_fcomplex':'clb_{complex}'}

parbounds_design_2 = {p:[1e-9,1e3] for p in parlist_design_2}



##############################################
# Design_3: QSS model
##############################################
def scipy_design_3(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,s = state

        s_free = math.sqrt( ( (1.0/K_A + (x+y+z) - s) / 2.0 )**2.0 + s/K_A ) - ( 1.0/K_A + (x+y+z) - s ) / 2.0 ;
        f = 1.0 / (1.0 + s_free * K_A)
        xdot = v_x - b_x * f * x - e * (1.0-f) * x - g_yx * f**2 * x * y - g_zx * f**2 * x * z ;
        ydot = v_y - b_y * f * y - e * (1.0-f) * y + a_xy * f * x + a_yy * f * y - g_yy * f**2 * y**2 - g_zy * f**2 * z * y ;
        zdot = v_z - b_z * f * z - e * (1.0-f) * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f**2 * z**2 ;

        sdot = v_s - b_s * s_free - e * (1.0-f) * (x+y+z) - d * (1.0-f) * (x+y+z) * f * (x + y + z);     

        return [xdot,ydot,zdot,sdot]
    
    # Parameters 
    parlist = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz']
    v_x,v_y,v_z,v_s,K_A,b_x,b_y,b_z,b_s,d,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_3 = ['x','y','z','s']
varnames_design_3 = {'x':'Clb5','y':'Clb3','z':'Clb2','s':'Sic1'}
y0_design_3 = {'x':0, 'y':0, 'z':0,'s':5}
pset_design_3 = [ 0.089, 0.01, 0.001, 0.137, 40, 1, 1, 1, 0.0005, 0.04, 0.005,
        1, 0.1, 1, 0.1, 0.1,
        0.7, 0.7, 0.7, 0.7, 0.7]
parlist_design_3 = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
                   'a_xy','a_xz','a_yz','a_yy','a_zz',
                   'g_yx','g_zx','g_zy','g_yy','g_zz']
pset_design_3 = {parlist_design_3[i]:pset_design_3[i] for i in range(len(pset_design_3))}


SDS_design_3 = [
    'x. = v_x - b_x * f * x - g_yx * f^2 * x * y - g_zx * f^2 * x * z - e * f_inv * x',
    'y. = v_y - b_y * f * y + a_xy * f * x + a_yy * f * y - g_yy * f^2 * y^2 - g_zy * f^2 * z * y - e * f_inv * y',
    'z. = v_z - b_z * f * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f^2 * z^2 - e * f_inv * z',
    's. = v_s - b_s * s_free - e * f_inv * clbT - d * f_inv * clbT * f * clbT',
    's_free =  -(1/2.0)*K_A^(-1.0) + (1/2.0)*s - (1/2.0)*clbT + aux1^(1/2.0)',
    'f_inv = 1 - f',
    'f = f_denom^(-1.0)',
    'f_denom = (1+s_free*K_A)',
    'aux1 = s*K_A^(-1.0) + (1/4.0)*aux2^2.0', # under square root in s_free
    'aux2 = K_A^(-1.0) - s + clbT', # the square under the root
    'clbT = x+y+z']

constraints_design_3 = []


latex_symbols_design_3 = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','K_A':'K_A','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                    'f_inv':'f_{inv}','f_denom':'f_{denom}','s_free':'s_{free}'}

parbounds_design_3 = {p:[1e-9,1e3] for p in parlist_design_3}


##############################################
# Design_4: Model 3 + Clb2 --| Clb5
##############################################
def scipy_design_4(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,s = state

        s_free = math.sqrt( ( (1.0/K_A + (x+y+z) - s) / 2.0 )**2.0 + s/K_A ) - ( 1.0/K_A + (x+y+z) - s ) / 2.0 ;
        f = 1.0 / (1.0 + s_free * K_A)
        xdot = v_x*(1/(1+z/K_zx)) - b_x * f * x - e * (1.0-f) * x - g_yx * f**2 * x * y - g_zx * f**2 * x * z ;
        ydot = v_y - b_y * f * y - e * (1.0-f) * y + a_xy * f * x + a_yy * f * y - g_yy * f**2 * y**2 - g_zy * f**2 * z * y ;
        zdot = v_z - b_z * f * z - e * (1.0-f) * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f**2 * z**2 ;

        sdot = v_s - b_s * s_free - e * (1.0-f) * (x+y+z) - d * (1.0-f) * (x+y+z) * f * (x + y + z);     

        return [xdot,ydot,zdot,sdot]
    
    # Parameters 
    parlist = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz',
               'K_zx']
    v_x,v_y,v_z,v_s,K_A,b_x,b_y,b_z,b_s,d,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz,\
    K_zx = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_4 = ['x','y','z','s']
varnames_design_4 = {'x':'Clb5','y':'Clb3','z':'Clb2','s':'Sic1'}
y0_design_4 = {'x':0, 'y':0, 'z':0,'s':5}
pset_design_4 = [ 0.089, 0.01, 0.001, 0.137, 40, 1, 1, 1, 0.0005, 0.04, 0.005,
        1, 0.1, 1, 0.1, 0.1,
        0.7, 0.7, 0.7, 0.7, 0.7,
        1.0]
parlist_design_4 = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
                   'a_xy','a_xz','a_yz','a_yy','a_zz',
                   'g_yx','g_zx','g_zy','g_yy','g_zz',
                   'K_zx']
pset_design_4 = {parlist_design_4[i]:pset_design_4[i] for i in range(len(pset_design_4))}


SDS_design_4 = [
    'x. = v_x * aux3^(-1.0) - b_x * f * x - g_yx * f^2 * x * y - g_zx * f^2 * x * z - e * f_inv * x',
    'y. = v_y - b_y * f * y + a_xy * f * x + a_yy * f * y - g_yy * f^2 * y^2 - g_zy * f^2 * z * y - e * f_inv * y',
    'z. = v_z - b_z * f * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f^2 * z^2 - e * f_inv * z',
    's. = v_s - b_s * s_free - e * f_inv * clbT - d * f_inv * clbT * f * clbT',
    's_free =  -(1/2.0)*K_A^(-1.0) + (1/2.0)*s - (1/2.0)*clbT + aux1^(1/2.0)',
    'f_inv = 1 - f',
    'f = f_denom^(-1.0)',
    'f_denom = (1+s_free*K_A)',
    'aux1 = s*K_A^(-1.0) + (1/4.0)*aux2^2.0', # under square root in s_free
    'aux2 = K_A^(-1.0) - s + clbT', # the square under the root
    'clbT = x+y+z',
    'aux3 = 1 + z*K_zx^(-1.0)']

constraints_design_4 = []


latex_symbols_design_4 = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','K_A':'K_A','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                    'f_inv':'f_{inv}','f_denom':'f_{denom}','s_free':'s_{free}',
                    'K_zx':r'K_{zx}'}

parbounds_design_4 = {p:[1e-9,1e3] for p in parlist_design_4}


##############################################
# Design_5: Model 3 + Clb2 --| Sic1
##############################################
def scipy_design_5(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,s = state

        s_free = math.sqrt( ( (1.0/K_A + (x+y+z) - s) / 2.0 )**2.0 + s/K_A ) - ( 1.0/K_A + (x+y+z) - s ) / 2.0 ;
        f = 1.0 / (1.0 + s_free * K_A)
        xdot = v_x - b_x * f * x - e * (1.0-f) * x - g_yx * f**2 * x * y - g_zx * f**2 * x * z ;
        ydot = v_y - b_y * f * y - e * (1.0-f) * y + a_xy * f * x + a_yy * f * y - g_yy * f**2 * y**2 - g_zy * f**2 * z * y ;
        zdot = v_z - b_z * f * z - e * (1.0-f) * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f**2 * z**2 ;

        sdot = v_s*(1/(1+z/K_zs)) - b_s * s_free - e * (1.0-f) * (x+y+z) - d * (1.0-f) * (x+y+z) * f * (x + y + z);     

        return [xdot,ydot,zdot,sdot]
    
    # Parameters 
    parlist = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz',
               'K_zs']
    v_x,v_y,v_z,v_s,K_A,b_x,b_y,b_z,b_s,d,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz,\
    K_zs = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_5 = ['x','y','z','s']
varnames_design_5 = {'x':'Clb5','y':'Clb3','z':'Clb2','s':'Sic1'}
y0_design_5 = {'x':0, 'y':0, 'z':0,'s':5}
pset_design_5 = [ 0.089, 0.01, 0.001, 0.137, 40, 1, 1, 1, 0.0005, 0.04, 0.005,
                    1, 0.1, 1, 0.1, 0.1,
                    0.7, 0.7, 0.7, 0.7, 0.7,
                    1.0]
parlist_design_5 = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
                   'a_xy','a_xz','a_yz','a_yy','a_zz',
                   'g_yx','g_zx','g_zy','g_yy','g_zz',
                   'K_zs']
pset_design_5 = {parlist_design_5[i]:pset_design_5[i] for i in range(len(pset_design_5))}


SDS_design_5 = [
    'x. = v_x - b_x * f * x - g_yx * f^2 * x * y - g_zx * f^2 * x * z - e * f_inv * x',
    'y. = v_y - b_y * f * y + a_xy * f * x + a_yy * f * y - g_yy * f^2 * y^2 - g_zy * f^2 * z * y - e * f_inv * y',
    'z. = v_z - b_z * f * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f^2 * z^2 - e * f_inv * z',
    's. = v_s * aux3^(-1.0) - b_s * s_free - e * f_inv * clbT - d * f_inv * clbT * f * clbT',
    's_free =  -(1/2.0)*K_A^(-1.0) + (1/2.0)*s - (1/2.0)*clbT + aux1^(1/2.0)',
    'f_inv = 1 - f',
    'f = f_denom^(-1.0)',
    'f_denom = (1+s_free*K_A)',
    'aux1 = s*K_A^(-1.0) + (1/4.0)*aux2^2.0', # under square root in s_free
    'aux2 = K_A^(-1.0) - s + clbT', # the square under the root
    'clbT = x+y+z',
    'aux3 = 1+z*K_zs^(-1.0)']

constraints_design_5 = []


latex_symbols_design_5 = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','K_A':'K_A','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                    'f_inv':'f_{inv}','f_denom':'f_{denom}','s_free':'s_{free}',
                    'K_zs':r'K_{zs}'}

parbounds_design_5 = {p:[1e-9,1e3] for p in parlist_design_5}



##############################################
# Design_6: Model 3 + Clb2,3,5 --| Sic1
##############################################
def scipy_design_6(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,s = state

        s_free = math.sqrt( ( (1.0/K_A + (x+y+z) - s) / 2.0 )**2.0 + s/K_A ) - ( 1.0/K_A + (x+y+z) - s ) / 2.0 ;
        f = 1.0 / (1.0 + s_free * K_A)
        xdot = v_x - b_x * f * x - e * (1.0-f) * x - g_yx * f**2 * x * y - g_zx * f**2 * x * z ;
        ydot = v_y - b_y * f * y - e * (1.0-f) * y + a_xy * f * x + a_yy * f * y - g_yy * f**2 * y**2 - g_zy * f**2 * z * y ;
        zdot = v_z - b_z * f * z - e * (1.0-f) * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f**2 * z**2 ;

        sdot = v_s * (1/(1 + (x+y+z)/K_cs)) - b_s * s_free - e * (1.0-f) * (x+y+z) - d * (1.0-f) * (x+y+z) * f * (x + y + z);     

        return [xdot,ydot,zdot,sdot]
    
    # Parameters 
    parlist = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz',
               'K_cs']
    v_x,v_y,v_z,v_s,K_A,b_x,b_y,b_z,b_s,d,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz,\
    K_cs = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_6 = ['x','y','z','s']
varnames_design_6 = {'x':'Clb5','y':'Clb3','z':'Clb2','s':'Sic1'}
y0_design_6 = {'x':0, 'y':0, 'z':0,'s':5}
pset_design_6 = [ 0.089, 0.01, 0.001, 0.137, 40, 1, 1, 1, 0.0005, 0.04, 0.005,
        1, 0.1, 1, 0.1, 0.1,
        0.7, 0.7, 0.7, 0.7, 0.7,
        1.0]
parlist_design_6 = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
                   'a_xy','a_xz','a_yz','a_yy','a_zz',
                   'g_yx','g_zx','g_zy','g_yy','g_zz',
                   'K_cs']
pset_design_6 = {parlist_design_6[i]:pset_design_6[i] for i in range(len(pset_design_6))}


SDS_design_6 = [
    'x. = v_x - b_x * f * x - g_yx * f^2 * x * y - g_zx * f^2 * x * z - e * f_inv * x',
    'y. = v_y - b_y * f * y + a_xy * f * x + a_yy * f * y - g_yy * f^2 * y^2 - g_zy * f^2 * z * y - e * f_inv * y',
    'z. = v_z - b_z * f * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f^2 * z^2 - e * f_inv * z',
    's. = v_s * aux3^(-1.0) - b_s * s_free - e * f_inv * clbT - d * f_inv * clbT * f * clbT',
    's_free =  -(1/2.0)*K_A^(-1.0) + (1/2.0)*s - (1/2.0)*clbT + aux1^(1/2.0)',
    'f_inv = 1 - f',
    'f = f_denom^(-1.0)',
    'f_denom = (1+s_free*K_A)',
    'aux1 = s*K_A^(-1.0) + (1/4.0)*aux2^2.0', # under square root in s_free
    'aux2 = K_A^(-1.0) - s + clbT', # the square under the root
    'clbT = x+y+z',
    'aux3 = 1 + clbT*K_cs^(-1.0)']

constraints_design_6 = []

latex_symbols_design_6 = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','K_A':'K_A','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                    'f_inv':'f_{inv}','f_denom':'f_{denom}','s_free':'s_{free}',
                    'K_cs':r'K_{cs}'}

parbounds_design_6 = {p:[1e-9,1e3] for p in parlist_design_6}



##############################################
# Design_7: Model 3 + Sic1 --| Clb2,3
##############################################
def scipy_design_7(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,s = state

        s_free = math.sqrt( ( (1.0/K_A + (x+y+z) - s) / 2.0 )**2.0 + s/K_A ) - ( 1.0/K_A + (x+y+z) - s ) / 2.0 ;
        f = 1.0 / (1.0 + s_free * K_A)
        xdot = v_x - b_x * f * x - e * (1.0-f) * x - g_yx * f**2 * x * y - g_zx * f**2 * x * z ;
        ydot = v_y * (1 / (1 + s/K_syz)) - b_y * f * y - e * (1.0-f) * y + a_xy * f * x + a_yy * f * y - g_yy * f**2 * y**2 - g_zy * f**2 * z * y ;
        zdot = v_z * (1 / (1 + s/K_syz)) - b_z * f * z - e * (1.0-f) * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f**2 * z**2 ;

        sdot = v_s - b_s * s_free - e * (1.0-f) * (x+y+z) - d * (1.0-f) * (x+y+z) * f * (x + y + z);     

        return [xdot,ydot,zdot,sdot]
    
    # Parameters 
    parlist = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz',
               'K_syz']
    v_x,v_y,v_z,v_s,K_A,b_x,b_y,b_z,b_s,d,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz,\
    K_syz = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_7 = ['x','y','z','s']
varnames_design_7 = {'x':'Clb5','y':'Clb3','z':'Clb2','s':'Sic1'}
y0_design_7 = {'x':0, 'y':0, 'z':0,'s':5}
pset_design_7 = [ 0.089, 0.01, 0.001, 0.137, 40, 1, 1, 1, 0.0005, 0.04, 0.005,
        1, 0.1, 1, 0.1, 0.1,
        0.7, 0.7, 0.7, 0.7, 0.7,
        1.0]
parlist_design_7 = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
                   'a_xy','a_xz','a_yz','a_yy','a_zz',
                   'g_yx','g_zx','g_zy','g_yy','g_zz',
                   'K_syz']
pset_design_7 = {parlist_design_7[i]:pset_design_7[i] for i in range(len(pset_design_7))}


SDS_design_7 = [
    'x. = v_x - b_x * f * x - g_yx * f^2 * x * y - g_zx * f^2 * x * z - e * f_inv * x',
    'y. = v_y * aux3^(-1.0) - b_y * f * y + a_xy * f * x + a_yy * f * y - g_yy * f^2 * y^2 - g_zy * f^2 * z * y - e * f_inv * y',
    'z. = v_z * aux3^(-1.0) - b_z * f * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f^2 * z^2 - e * f_inv * z',
    's. = v_s - b_s * s_free - e * f_inv * clbT - d * f_inv * clbT * f * clbT',
    's_free =  -(1/2.0)*K_A^(-1.0) + (1/2.0)*s - (1/2.0)*clbT + aux1^(1/2.0)',
    'f_inv = 1 - f',
    'f = f_denom^(-1.0)',
    'f_denom = (1+s_free*K_A)',
    'aux1 = s*K_A^(-1.0) + (1/4.0)*aux2^2.0', # under square root in s_free
    'aux2 = K_A^(-1.0) - s + clbT', # the square under the root
    'clbT = x+y+z', 
    'aux3 = 1 + s*K_syz^(-1.0)']

constraints_design_7 = []

latex_symbols_design_7 = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','K_A':'K_A','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                    'f_inv':'f_{inv}','f_denom':'f_{denom}','s_free':'s_{free}',
                    'K_syz':r'K_{syz}'}

parbounds_design_7 = {p:[1e-9,1e3] for p in parlist_design_7}

##############################################
# Design_8: Model 3 + Sic1 --| Clb2,3,5
##############################################
def scipy_design_8(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,s = state

        s_free = math.sqrt( ( (1.0/K_A + (x+y+z) - s) / 2.0 )**2.0 + s/K_A ) - ( 1.0/K_A + (x+y+z) - s ) / 2.0 ;
        f = 1.0 / (1.0 + s_free * K_A)
        xdot = v_x * (1 / (1 + s/K_sxyz)) - b_x * f * x - e * (1.0-f) * x - g_yx * f**2 * x * y - g_zx * f**2 * x * z ;
        ydot = v_y * (1 / (1 + s/K_sxyz)) - b_y * f * y - e * (1.0-f) * y + a_xy * f * x + a_yy * f * y - g_yy * f**2 * y**2 - g_zy * f**2 * z * y ;
        zdot = v_z * (1 / (1 + s/K_sxyz)) - b_z * f * z - e * (1.0-f) * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f**2 * z**2 ;

        sdot = v_s - b_s * s_free - e * (1.0-f) * (x+y+z) - d * (1.0-f) * (x+y+z) * f * (x + y + z);     

        return [xdot,ydot,zdot,sdot]
    
    # Parameters 
    parlist = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz',
               'K_sxyz']
    v_x,v_y,v_z,v_s,K_A,b_x,b_y,b_z,b_s,d,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz,\
    K_sxyz = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_8 = ['x','y','z','s']
varnames_design_8 = {'x':'Clb5','y':'Clb3','z':'Clb2','s':'Sic1'}
y0_design_8 = {'x':0, 'y':0, 'z':0,'s':5}
pset_design_8 = [ 0.089, 0.01, 0.001, 0.137, 40, 1, 1, 1, 0.0005, 0.04, 0.005,
        1, 0.1, 1, 0.1, 0.1,
        0.7, 0.7, 0.7, 0.7, 0.7,
        1.0]
parlist_design_8 = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
                   'a_xy','a_xz','a_yz','a_yy','a_zz',
                   'g_yx','g_zx','g_zy','g_yy','g_zz',
                   'K_sxyz']
pset_design_8 = {parlist_design_8[i]:pset_design_8[i] for i in range(len(pset_design_8))}


SDS_design_8 = [
    'x. = v_x * aux3^(-1.0) - b_x * f * x - g_yx * f^2 * x * y - g_zx * f^2 * x * z - e * f_inv * x',
    'y. = v_y * aux3^(-1.0) - b_y * f * y + a_xy * f * x + a_yy * f * y - g_yy * f^2 * y^2 - g_zy * f^2 * z * y - e * f_inv * y',
    'z. = v_z * aux3^(-1.0) - b_z * f * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f^2 * z^2 - e * f_inv * z',
    's. = v_s - b_s * s_free - e * f_inv * clbT - d * f_inv * clbT * f * clbT',
    's_free =  -(1/2.0)*K_A^(-1.0) + (1/2.0)*s - (1/2.0)*clbT + aux1^(1/2.0)',
    'f_inv = 1 - f',
    'f = f_denom^(-1.0)',
    'f_denom = (1+s_free*K_A)',
    'aux1 = s*K_A^(-1.0) + (1/4.0)*aux2^2.0', # under square root in s_free
    'aux2 = K_A^(-1.0) - s + clbT', # the square under the root
    'clbT = x+y+z', 
    'aux3 = 1 + s*K_sxyz^(-1.0)']

constraints_design_8 = []

latex_symbols_design_8 = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','K_A':'K_A','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                    'f_inv':'f_{inv}','f_denom':'f_{denom}','s_free':'s_{free}',
                    'K_sxyz':r'K_{sxyz}'}

parbounds_design_8 = {p:[1e-9,1e3] for p in parlist_design_8}


##############################################
# Design_9: Model 3 + Sic1 --| Sic1
##############################################
def scipy_design_9(par,initial_cond,start_t,end_t,num_steps):
    '''par and initial_cond are dictionaries'''
    
    def model(t,state):
        '''Return derivatives for the model based on the current state. 
        The parameters are derived from the enclosing function.'''
        x,y,z,s = state

        s_free = math.sqrt( ( (1.0/K_A + (x+y+z) - s) / 2.0 )**2.0 + s/K_A ) - ( 1.0/K_A + (x+y+z) - s ) / 2.0 ;
        f = 1.0 / (1.0 + s_free * K_A)
        xdot = v_x - b_x * f * x - e * (1.0-f) * x - g_yx * f**2 * x * y - g_zx * f**2 * x * z ;
        ydot = v_y - b_y * f * y - e * (1.0-f) * y + a_xy * f * x + a_yy * f * y - g_yy * f**2 * y**2 - g_zy * f**2 * z * y ;
        zdot = v_z - b_z * f * z - e * (1.0-f) * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f**2 * z**2 ;

        sdot = v_s * (1 / (1 + s/K_ss))  - b_s * s_free - e * (1.0-f) * (x+y+z) - d * (1.0-f) * (x+y+z) * f * (x + y + z);     

        return [xdot,ydot,zdot,sdot]
    
    # Parameters 
    parlist = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
               'a_xy','a_xz','a_yz','a_yy','a_zz',
               'g_yx','g_zx','g_zy','g_yy','g_zz',
               'K_ss']
    v_x,v_y,v_z,v_s,K_A,b_x,b_y,b_z,b_s,d,e,\
    a_xy,a_xz,a_yz,a_yy,a_zz,\
    g_yx,g_zx,g_zy,g_yy,g_zz,\
    K_ss = [par[k] for k in parlist]

    # variables and IC
    variables = ['x','y','z','s']
    initial_cond = [initial_cond[temp] for temp in variables]

    # solve
    t,sys,flag = int_model(model,[],initial_cond,start_t,end_t,num_steps)
            
    # organize for output
    x = {variables[i]:sys[:,i] for i in range(len(sys[0,:]))}

    return (x,t,flag)


variables_design_9 = ['x','y','z','s']
varnames_design_9 = {'x':'Clb5','y':'Clb3','z':'Clb2','s':'Sic1'}
y0_design_9 = {'x':0, 'y':0, 'z':0,'s':5}
pset_design_9 = [ 0.089, 0.01, 0.001, 0.137, 40, 1, 1, 1, 0.0005, 0.04, 0.005,
        1, 0.1, 1, 0.1, 0.1,
        0.7, 0.7, 0.7, 0.7, 0.7,
        1.0]
parlist_design_9 = ['v_x','v_y','v_z','v_s','K_A','b_x','b_y','b_z','b_s','d','e',
                   'a_xy','a_xz','a_yz','a_yy','a_zz',
                   'g_yx','g_zx','g_zy','g_yy','g_zz',
                   'K_ss']
pset_design_9 = {parlist_design_9[i]:pset_design_9[i] for i in range(len(pset_design_9))}


SDS_design_9 = [
    'x. = v_x - b_x * f * x - g_yx * f^2 * x * y - g_zx * f^2 * x * z - e * f_inv * x',
    'y. = v_y - b_y * f * y + a_xy * f * x + a_yy * f * y - g_yy * f^2 * y^2 - g_zy * f^2 * z * y - e * f_inv * y',
    'z. = v_z - b_z * f * z + a_xz * f * x + a_yz * f * y + a_zz * f * z - g_zz * f^2 * z^2 - e * f_inv * z',
    's. = v_s * aux3^(-1.0) - b_s * s_free - e * f_inv * clbT - d * f_inv * clbT * f * clbT',
    's_free =  -(1/2.0)*K_A^(-1.0) + (1/2.0)*s - (1/2.0)*clbT + aux1^(1/2.0)',
    'f_inv = 1 - f',
    'f = f_denom^(-1.0)',
    'f_denom = (1+s_free*K_A)',
    'aux1 = s*K_A^(-1.0) + (1/4.0)*aux2^2.0', # under square root in s_free
    'aux2 = K_A^(-1.0) - s + clbT', # the square under the root
    'clbT = x+y+z',
    'aux3 = 1 + s*K_ss^(-1.0)']

constraints_design_9 = []

latex_symbols_design_9 = {'v_x':'v_x','v_y':'v_y','v_z':'v_z','v_s':'v_s','K_A':'K_A','b_x':r'\beta_x','b_y':r'\beta_y','b_z':r'\beta_z','b_s':r'\beta_s','d':r'\delta', 'l':r'\lambda' , 'e':r'\epsilon',
                  'a_xy':r'\alpha_{xy}','a_xz':r'\alpha_{xz}','a_yz':r'\alpha_{yz}','a_yy':r'\alpha_{yy}','a_zz':r'\alpha_{zz}',
                  'g_yx':r'\gamma_{yx}','g_zx':r'\gamma_{zx}','g_zy':r'\gamma_{zy}','g_yy':r'\gamma_{yy}','g_zz':r'\gamma_{zz}',
                    'f_inv':'f_{inv}','f_denom':'f_{denom}','s_free':'s_{free}',
                    'K_ss':r'K_{ss}'}

parbounds_design_9 = {p:[1e-9,1e3] for p in parlist_design_9}