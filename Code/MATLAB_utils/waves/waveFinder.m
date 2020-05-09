function wave = waveFinder(T,p,model,interupt_time)
% wave_finder   solve and analyse properties of wave dynamics
%   wave_finder takes parameter set p for use with model and calculates the
%   wave characteristics they produce Input: contains T (simulation time)
%   and p, the parameter structure, the name of the model to be simulated a
%   matrix with datapoints [time measurements] and a 1x3 Boolean vector of
%   plot options. plotOptions(1) specifies whether to produce a plot,
%   plotOptions(2) if a multi-panel or single-panel plot should be
%   produced, and plotOptions(3) if the timecourses coming from the solver
%   should be normalized.
%
%   wave_finder runs model with ode15s for parameter set p and integration
%   time [0 T]. It returns the output of ode15s in the form of t and X.
%   Additional output concerns wave properties of the dynamics. Wave_finder
%   calls plotWave() with plotOptions to plot the dynamics if specified in plotOptions(1).
%
if ~exist('datapoints','var')
    datapoints = []; % no data given
end

if ~exist('interupt_time','var')
    interupt_time = 1; % 1 second max calculation time
end

% Roughly speaking, this means that you want RelTol correct digits in all solution components except
% those smaller than thresholds AbsTol(i).
outputFun = @(t,y,flag)interuptFun(t,y,flag,interupt_time);
options = odeset('RelTol',1e-8,'AbsTol',1e-9,... % accuracy by default (e-3,e-6),
    'Events',@events,'OutputFcn',outputFun); % events stops simulations to protect against blowup


% Simulate chosen model  
if (model.name(end) == '1') || (model.name(end) == '2') % Design 1 and 2
    IC = [0 0 0 0 0 0 p.s_0];
    options = odeset(options,'NonNegative',1:numel(IC)); % expand NonNegative for 7 variables
    sol_struct = ode15s(@(t,X)ODE_design12(t,X,p,model),T,IC,options);
    t = sol_struct.x;
    X = sol_struct.y';% contains the timecourses over the columns so we have to flip it
    Xt = [ X(:,1)+X(:,4) X(:,2)+X(:,5) X(:,3)+X(:,6) X(:,7)+X(:,6)+X(:,5)+X(:,4) ];
    Xequi = deval(sol_struct,linspace(0,T(end),1000))'; % extract solution exactly at datapoints equidistant so that the mean is honest
    Xtequi = [ Xequi(:,1)+Xequi(:,4) Xequi(:,2)+Xequi(:,5) Xequi(:,3)+Xequi(:,6) Xequi(:,7)+Xequi(:,6)+Xequi(:,5)+Xequi(:,4)];
    
else % Design 3
    IC = [0 0 0 p.s_0]';
    options = odeset(options,'NonNegative',1:numel(IC)); % NonNegative
    sol_struct = ode15s(@(t,X)ODE_design3(t,X,p,model),T,IC,options); 
    t = sol_struct.x;
    X = sol_struct.y';% contains the timecourses over the columns so we have to flip it
    Xt = X;
    Xtequi = deval(sol_struct,linspace(0,T(end),1000))'; % extract solution exactly at datapoints equidistant so that the mean is honest   

end

% Check for things going through zero
minima = min(X);
if min(minima) < 0
    fprintf('WATCH OUT: The minimum value reached is: %f. \n',min(minima));
    return
end

% The properties are calculated w.r.t. the total Clb concentrations
meanXt = mean(Xtequi); % note the equi so that we equally sampling over time instead of by the integration time steps
[peakHeight,peakIndeX] = max(Xt); % takes all time courses into account

peakRatio = min(peakHeight) / max(peakHeight); % ratio of smallest to largest peak
peakTimes = t(peakIndeX(1:3)); % only for the cyclins
meanPeakTime = mean(peakTimes);
peakDistance = [peakTimes(2) - peakTimes(1), peakTimes(3) - peakTimes(2)];

% max. ratio of the end time amplitude and the peak amplitude
endPeakRatio = Xt(end,1:3)./peakHeight(1:3); % for all cyclins + Sic1 and ideally close to zero
maxEndPeakRatio = max(endPeakRatio);
% Check if the timecourse satisfies "wave-like" criteria
wave = true; % wave-like if it passes the criteria below
% Check for correct sequential peak timing
if any(peakDistance <= 0)
    wave = false;
    % Check for wave characteristic, i.e. going down past the peak
elseif any(endPeakRatio >= 0.9) % each time course should go down past the peak at least 10%
    wave = false;
end

% generate the output structure
wave = struct('model',model.name,'p',p,'sol',sol_struct,'t',t,'X',X,'Xt',Xt,'meanXt',meanXt,'peakHeight',peakHeight,'peakRatio',peakRatio,...
    'peakTimes',peakTimes,'meanPeakTime',meanPeakTime,'peakDistance',peakDistance,'endPeakRatio',endPeakRatio,...
    'maxEndPeakRatio',maxEndPeakRatio,'wave',wave);

function [value,isterminal,direction] = events(~,y,~) % t,y,p
    % Locate the time when height passes through zero in a decreasing direction
    % and stop integration.
    value = 1e3 - max(y); % detect height = 0
    isterminal = 1;   % stop the integration
    direction = 0;   % -1 negative direction, 0 all directions, +1 positive direction
end

function status = interuptFun(t,y,flag,interupt_time)   %#ok<INUSL>
    persistent INIT_TIME;
    status = 0;
    switch(flag)
        case 'init'
            INIT_TIME = tic;
        case 'done'
            clear INIT_TIME;
        otherwise
            elapsed_time = toc(INIT_TIME);
            if elapsed_time > interupt_time
                clear INIT_TIME;
                str = sprintf('%.6f',elapsed_time);
                error('interuptFun:Interupt',...
                    ['Interupted integration. Elapsed time is ' str ' seconds.']);
            end
    end
end

end