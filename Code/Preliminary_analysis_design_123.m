%% Analyse transient and limit cycle oscillations in Design 1A - 3
%% Load workspace
addpath(genpath('./MATLAB_utils'))
load('Design_1-3_workspace.mat')

% Set Helvetica as font with 
% font size 8 for Nature
% 9 looks better
fontname = 'Helvetica'; 
set(0,'DefaultAxesFontName',fontname,'DefaultTextFontName',fontname);
set(0,'DefaultAxesFontSize',9,'DefaultTextFontSize',9);

% half a column is 88mm, a whole column = 180mm
% Points: 249 and 510
% Pixels: 332 and 680

% TEST CASES: find a scaling factor that gets the right size exported figure
% - Half a column (8.8 cm) pageheight/4 (6 cm)
% (1.08, 1.03) * (249,680/4) => (8.82cm, 6cm)
% - Whole column (18 cm), pageheight/2 (12 cm)
% (1.08, 1.03) * (510,680/2) => (16.51cm, 11.33cm) slightly off but okay
width_mult = 1.08;
colw = width_mult*249; 
pagew = width_mult*510;

% height of A4 page: 276mm so a figure should be max. 240mm
% 680 point or 907 pixels
height_mult = 1.03;
pageh = height_mult*680;

%% Model 1A: No Clb-Clb inhibition

% change pNames and p to work with this altered model
model = models.design_1; 

%%% ==============================================
%%% transient oscillatons (v_s = 0)
%%% ==============================================
p = [ 5 0.1 0.01 0.001 0 5 0.5 0.7 0.7 0.7 0.001 0.05 0.05 0.01 ...
    1 0.1 1 0 0.1 ... % a_yy = 0
    0 0 0 0 0];
p = array2struct(p,model.pnames);
T = 60;

figure('position', [100, 100, colw, pageh/4]) 
w = waveFinder([0 T],p,model); 
plotWave(w,[],[0 0 1])

export_fig ../Figures/design_1A_transient -pdf

figure('position', [100, 100, pagew, pageh/1.75])
w = waveFinder([0 T],p,model); 
plotWave(w,[],[1 0 0])

export_fig ../Figures/design_1A_transient_multipanel -pdf

%%% ==============================================
%%% Dampened oscillatons (just switch on v_s = 0.3)
%%% ==============================================
p.v_s = 0.3;

T = 1000;
w = waveFinder([0 T],p,model,20) ;

figure('Position',[100, 100, colw, pageh/4])
plot(w.t,w.Xt(:,[1 2 3 4]))
xlabel('Time (min)'); ylabel('Concentration (a.u.)')
legend('Clb5','Clb3','Clb2','Sic1')

export_fig ../Figures/design_1A_dampened -pdf

%%% ==============================================
% Sustained oscillations
%%% ==============================================

% note the increase of kp from 5 to 20
T = 1000;
p.kp = 20;
w = waveFinder([0 T],p,model,20);

% plot the limit cycle time course for all species
figure('Position',[100, 100, pagew, pageh/3])
subplot(1,2,1)
plot(w.t,w.Xt(:,[1 2 3 4]))
xlabel('Time (min)'); ylabel('Concentration (a.u.)')
legend('Clb5','Clb3','Clb2','Sic1')

subplot(1,2,2)
plot3(w.Xt(:,1),w.Xt(:,3),w.Xt(:,4))
hold on;
fig = plot3(w.Xt(:,1),w.Xt(:,3),zeros(size(w.Xt(:,1))));
fig.Color = [237/255, 237/255, 237/255];
hold off;
xlabel('Clb5 (a.u.)'); ylabel('Clb2 (a.u.)'); zlabel('Sic1 (a.u.)')

export_fig ../Figures/design_1A_sustained -pdf

%%% ==============================================
% reducing the period based on period derivatives
%%% ==============================================

% increase lambda by 10%
% the scaled derivative was < -1 so the period should decrease by more than
% 10%
p.l = 1.1*p.l;

w2 = waveFinder([0 T],p,model,20);

% plot the limit cycle time course for all species
figure('Position',[100, 100, pagew, pageh/3])
subplot(1,2,1)
plot(w.t,w.Xt(:,[1 2 3 4]))
xlabel('Time (min)'); ylabel('Concentration (a.u.)')
legend('Clb5','Clb3','Clb2','Sic1')

subplot(1,2,2)
plot3(w.Xt(:,1),w.Xt(:,3),w.Xt(:,4))
xlabel('Clb5 (a.u.)'); ylabel('Clb2 (a.u.)'); zlabel('Sic1 (a.u.)')

close all

%% Model 1B: a_yy + g_yy + existing APC inhibitions

model = models.design_1;

%%% ==============================================
%%% transient oscillatons (v_s = 0) WITH THE ORIGINAL PARAMETER SET NOT THE
%%% OSCILLATING ONE!
%%% ==============================================
p = [ 5 0.1 0.01 0.001 0 5 0.5 0.7 0.7 0.7 0.001 0.05 0.05 0.01 ...
    1 0.1 1 0.1 0.1 ...
    0.7 0.7 0.7 0.7 0.7];
p = array2struct(p,model.pnames);
T = 60;

figure('position', [100, 100, colw, pageh/4])
w = waveFinder([0 T],p,model); 
plotWave(w,[],[0 0 1])

export_fig ../Figures/design_1B_transient -pdf

figure('position', [100, 100, pagew, pageh/2])
w = waveFinder([0 T],p,model); 
plotWave(w,[],[1 0 0])

export_fig ../Figures/design_1B_transient_multipanel -pdf
%%% ==============================================
%%% Sustained oscillations (turn gamma on and a_yy)
%%% ==============================================
T = 1000;
p = [ 5 0.1 0.01 0.001 0.3 20 0.5 0.7 0.7 0.7 0.001 0.05 0.05 0.01 ...
    1 0.1 1 0.1 0.1 ...
    0.7 0.7 0.7 0.7 0.7];
array2struct(p,model.pnames);
w = waveFinder([0 T],array2struct(p,model.pnames),model,20) ;

% plot the limit cycle time course for all species
figure('Position',[0 0 pagew, pageh/3])
subplot(1,2,1)
plot(w.t,w.Xt(:,[1 2 3 4]))
xlabel('Time (min)'); ylabel('Concentration (a.u.)')
legend('Clb5','Clb3','Clb2','Sic1')

subplot(1,2,2)
plot3(w.Xt(:,1),w.Xt(:,3),w.Xt(:,4))
hold on;
fig = plot3(w.Xt(:,1),w.Xt(:,3),zeros(size(w.Xt(:,1))));
fig.Color = [237/255, 237/255, 237/255];
hold off;
xlabel('Clb5 (a.u.)'); ylabel('Clb2 (a.u.)'), zlabel('Sic1 (a.u.)')

export_fig ../Figures/design_1B_sustained -pdf

close all

%% Model 1C: Remove 1+ term, i.e. lambda=0

% change pNames and p to work with this altered model
model = models.design_1;

%%% ==============================================
%%% transient oscillatons (v_s = 0) WITH THE ORIGINAL PARAMETER SET NOT THE
%%% OSCILLATING ONE!
%%% ==============================================
p = [ 5 0.1 0.01 0.001 0 5 0.5 0.7 0.7 0.7 0.001 0.05 0 0.01 ...
    1 0.1 1 0.1 0.1 ...
    0.7 0.7 0.7 0.7 0.7];
p = array2struct(p,model.pnames);
T = 60;

figure('position', [100, 100, colw, pageh/3.5])
w = waveFinder([0 T],p,model); 
plotWave(w,[],[0 0 1])

export_fig ../Figures/design_1C_transient -pdf

figure('position', [100, 100, 1.1*pagew, pageh/1.75])
w = waveFinder([0 T],p,model); 
plotWave(w,[],[1 0 0])

export_fig ../Figures/design_1C_transient_multipanel -pdf

%%% ==============================================
%%% Sustained oscillations (v_s = 0.18,b_s=0.003,delta=0.1,lambda=0,epsilon=0.005)
%%% ==============================================
p = [ 5 0.1 0.01 0.001 0.18 20 0.5 0.7 0.7 0.7 0.003 0.1 0 0.005 ...
    1 0.1 1 0.1 0.1 ...
    0.7 0.7 0.7 0.7 0.7];
array2struct(p,model.pnames);
T = 2000;
w = waveFinder([0 T],array2struct(p,model.pnames),model,20) ;

% plot the limit cycle time course for all species
figure('Position',[0 0 pagew, pageh/3.5])
subplot(1,2,1)
plot(w.t,w.Xt(:,[1 2 3 4]))
xlabel('Time (min)'); ylabel('Concentration (a.u.)')
legend('Clb5','Clb3','Clb2','Sic1')

subplot(1,2, 2)
plot3(w.Xt(:,1),w.Xt(:,3),w.Xt(:,4))
hold on;
fig = plot3(w.Xt(:,1),w.Xt(:,3),zeros(size(w.Xt(:,1))));
fig.Color = [237/255, 237/255, 237/255];
hold off;
xlabel('Clb5 (a.u.)'); ylabel('Clb2 (a.u.)'), zlabel('Sic1 (a.u.)')

export_fig ../Figures/design_1C_sustained -pdf

close all

%% Model 2: recycling of Clb23 upon Sic1 degradation from ternary complex
model = models.design_2;

%%% ==============================================
%%% transient oscillatons (v_s = 0) WITH THE ORIGINAL PARAMETER SET NOT THE
%%% OSCILLATING ONE!
%%% ==============================================
p = [ 5 0.1 0.01 0.001 0 5 0.5 0.7 0.7 0.7 0.001 0.05 0.01 ...
    1 0.1 1 0.1 0.1 ...
    0.7 0.7 0.7 0.7 0.7];
p = array2struct(p,model.pnames);
T = 60;

figure('position', [100, 100, colw, pageh/3.5])
w = waveFinder([0 T],p,model); 
plotWave(w,[],[0 0 1])

export_fig ../Figures/design_2_transient -pdf
figure('position', [100, 100, pagew, pageh/1.75])
w = waveFinder([0 T],p,model); 
plotWave(w,[],[1 0 0])

export_fig ../Figures/design_2_transient_multipanel -pdf

%%% ==============================================
%%% Sustained oscillations (v_x=0.09,v_s=0.2,b_s=0.005, d = 0.05)
%%% ==============================================
T = 2000;

p = [ 5 0.09 0.01 0.001 0.2 20 0.5 0.7 0.7 0.7 0.005 0.05 0.005 ...
    1 0.1 1 0.1 0.1 ...
    0.7 0.7 0.7 0.7 0.7];
array2struct(p,model.pnames);
w = waveFinder([0 T],array2struct(p,model.pnames),model,20) ;

% plot the limit cycle time course for all species
figure('Position',[0 0 pagew, pageh/3])
subplot(1,2,1)
plot(w.t,w.Xt(:,[1 2 3 4]))
xlabel('Time (min)'); ylabel('Concentration (a.u.)')
legend('Clb5','Clb3','Clb2','Sic1')

subplot(1,2,2)
plot3(w.Xt(:,1),w.Xt(:,3),w.Xt(:,4))
hold on;
fig = plot3(w.Xt(:,1),w.Xt(:,3),zeros(size(w.Xt(:,1))));
fig.Color = [237/255, 237/255, 237/255];
hold off;
xlabel('Clb5 (a.u.)'); ylabel('Clb2 (a.u.)'), zlabel('Sic1 (a.u.)')
fig = gcf; fig.PaperPositionMode = 'auto'; % on-screen size

export_fig ../Figures/design_2_sustained -pdf

close all

%% The numerical effect of the QSS assumption: QSS vs updated and simplified Barberis2012 model

T = 100;
model = models.design_3;

p = [ 5 0.1 0.01 0.001 0 10 0.7 0.7 0.7 0.001 0.05 0.01 ...
    1 0.1 1 0.1 0.1 ...
    0.7 0.7 0.7 0.7 0.7];
p = array2struct(p,model.pnames);

% visualize model disagreement for the canonical parameter set
figure('position', [200, 200, colw, pageh/4])
tic;
waveQSS = waveFinder([0 T],p,model);
toc
p.km = 0.5; p.kp = p.K_A*p.km; % value in our default parameters
tic;
waveNonQSS = waveFinder([0 T],p,models.design_2);
toc
% plot results
hold on;
for i=1:4 % plot in sequence to deal with the hiding of the legend
    h = plot(waveQSS.sol.x,waveQSS.sol.y(i,:));
    if i > 1
        set(get(get(h,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
    end
end
ax = gca; ax.ColorOrderIndex = 1; % restart the coloring
for i=1:4
    h = plot(waveNonQSS.sol.x,waveNonQSS.Xt(:,i),'.');
    if i > 1
        set(get(get(h,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
    end
end
xlabel('Time (min)'); ylabel('Concentration (a.u.)')
% legend('QSS model','non QSS model')
% text(1,1.05*max(max(waveQSS.sol.y)),sprintf('K_A = %.2f',p.K_A))

%%% Analysis of kp and km value and the difference in model predictions
kValues = [ 0.02 0.025 0.03 0.04 0.05 0.1 0.2 0.3 0.4 0.5 1];
diff = zeros(length(kValues),1); diff2 = zeros(length(kValues),1);

p1 = p; p2=p;
for i=1:length(kValues)
    p1.km = kValues(i); p1.kp = p.K_A*p1.km;
    waveNonQSS = waveFinder([0 T],p1,models.design_2);
    X = deval(waveQSS.sol,waveNonQSS.t)'; % needed to get the same timepoints for both solutions
    diff(i) = sum(sum(abs((X(2:end,:)-waveNonQSS.Xt(2:end,:))./X(2:end,:))))/4/(length(waveNonQSS.t)-1);

    % now varying kp and calculating km
    p2.kp = kValues(i); p2.km = p2.kp/p.K_A;
    waveNonQSS = waveFinder([0 T],p2,models.design_2);
    X = deval(waveQSS.sol,waveNonQSS.t)'; % needed to get the same timepoints for both solutions
    diff2(i) = sum(sum(abs((X(2:end,:)-waveNonQSS.Xt(2:end,:))./X(2:end,:))))/4/(length(waveNonQSS.t)-1);
end

figure('position', [200, 200, colw, pageh/4])
plot(kValues,diff,'k',kValues,diff2,'k--')
xlabel('Value of k_{+/-}'); ylabel('ARD') % Average Relative Difference
legend('Varying k_-','Varying k_+')
hold off

export_fig ../Figures/qss_assumption_breakdown -pdf

close all

%% Model 3: QSS

model = models.design_3;

%%% ==============================================
%%% transient oscillatons (v_s = 0) WITH THE ORIGINAL PARAMETER SET NOT THE
%%% OSCILLATING ONE!
%%% ==============================================
p = [ 5 0.1 0.01 0.001 0 10 0.7 0.7 0.7 0.001 0.05 0.01 ...
    1 0.1 1 0.1 0.1 ...
    0.7 0.7 0.7 0.7 0.7];
p = array2struct(p,model.pnames);
T = 60;

figure('position', [100, 100, colw, pageh/4])
w = waveFinder([0 T],p,model); 
plotWave(w,[],[0 0 0])

export_fig ../Figures/design_3_transient -pdf

figure('position', [100, 100, pagew, pageh/2])
w = waveFinder([0 T],p,model); 
plotWave(w,[],[1 0 0])

export_fig ../Figures/design_3_transient_multipanel -pdf

%%% ==============================================
%%% Sustained oscillations (v_x = 0.089,v_s=0.137,b_s=0.0005,b_xyz = 1,d=0.04,e=0.005)
%%% ==============================================
T=2000;

% p = [ 5 0.089 0.01 0.001 0.137 40 1 1 1 0.0005 0.04 0.005 ...
%     1 0.1 1 0.1 0.1 0.7 0.7 0.7 0.7 0.7];
% the model 2 LC with the same K_A
p = [ 5 0.09 0.01 0.001 0.2 40 0.7 0.7 0.7 0.005 0.05 0.005 ...
    1 0.1 1 0.1 0.1 ...
    0.7 0.7 0.7 0.7 0.7];
array2struct(p,model.pnames);

w = waveFinder([0 T],array2struct(p,model.pnames),model,20) ;

% plot the limit cycle time course for all species
figure('Position',[0 0 pagew, pageh/3])
subplot(1,2,1)
plot(w.t,w.Xt(:,[1 2 3 4]))
xlabel('Time (min)'); ylabel('Concentration (a.u.)')
legend('Clb5','Clb3','Clb2','Sic1')

subplot(1,2,2)
plot3(w.Xt(:,1),w.Xt(:,3),w.Xt(:,4))
hold on;
fig = plot3(w.Xt(:,1),w.Xt(:,3),zeros(size(w.Xt(:,1))));
fig.Color = [237/255, 237/255, 237/255];
hold off;
xlabel('Clb5 (a.u.)'); ylabel('Clb2 (a.u.)'); zlabel('Sic1 (a.u.)')

export_fig ../Figures/design_3_sustained -pdf
close all