function plotWave(w,datapoints,plot_options)
% General function to plot a sigle time course of cyclin waves. Input:
% t         time points vector from ode solver
% data      time courses from ode solver
% p         parameter vector for the model
% options   vector of Boolean plotting properties.
%           1st argument: multi or single panel plot. 2nd argument: normalize time courses.

% default settings
if max(size(datapoints))<1 % if the datapoints argument is empty
    plot_datapoints = false;
else
    plot_datapoints = true;
    timepoints = datapoints(:,1);
    datapoints = datapoints(:,2:end);
end
if ~exist('plot_options','var')
    multipanel = true;
    normalize = false;
    joinClbSic = false;
else % unpack options vector
    multipanel = plot_options(1);
    normalize = plot_options(2);
    joinClbSic = plot_options(3);
end

X = w.X;
Xtot = w.Xt;
t = w.t;
model = w.model;
p = w.p;

%%% Normalize time 
% currently only works for the QSS model
% for other models this screws up Xt
if normalize
    X = bsxfun(@rdivide,X,max(X)); % nifty trick
end

%%% plot according to the various models I use

if (model(end) == '1') || (model(end) == '2')
    x = X(:,1); y = X(:,2); z = X(:,3);
    sx = X(:,4); sy = X(:,5); sz = X(:,6);
    s = X(:,7);
   
    if multipanel
        subplot(2,2,1:2); plot(t,[Xtot(:,1) Xtot(:,2) Xtot(:,3) ])
        if plot_datapoints
            hold on
            ax = gca; ax.ColorOrderIndex = 1; % restart the color
            p1=plot(timepoints,datapoints,'o');
            set(p1,{'MarkerEdgeColor'}, {'none'},{'MarkerFaceColor'},{'r';'b';[0 0.5 0]})
            hold off
        end
        legend('Clb5_T','Clb3_T','Clb2_T')
        xlabel('Time (min)'); ylabel('Concentration (a.u.)')
        
        
        subplot(2,2,3)
        plot(t,Xtot(:,4),'k',t,sx+sy+sz,'k--',t,s,'k.');
        legend('Sic1_T', 'Sic1 \cdot Clb5,3,2', 'Sic1')
        xlabel('Time (min)'); ylabel('Concentration (a.u.)')
        
        subplot(2,2,4)
        plot(t, [ sx sy sz ]); hold on;
        ax = gca; ax.ColorOrderIndex = 1; % restart the color
        plot(t, [ x y z ],'--'); hold off;
        legend('Sic1 \cdot Clb5','Sic1 \cdot Clb3', 'Sic1 \cdot Clb2','Clb5','Clb3','Clb2')
        xlabel('Time (min)'); ylabel('Concentration (a.u.)')
        
    else % single panel
        plot(t,Xtot(:,1:3))
        if plot_datapoints
            hold on
            ax = gca; ax.ColorOrderIndex = 1; % restart the coloring
            p1=plot(timepoints,datapoints,'o');
            set(p1,{'MarkerEdgeColor'}, {'none'},{'MarkerFaceColor'},{'r';'b';[0 0.5 0]})
            hold off
        end
        legend('Clb5_T','Clb3_T','Clb2_T');
        xlabel('Time (min)'); ylabel('Concentration (a.u.)')
    end    

else
    u   = X(:,1:3); % cyclins
    s   = X(:,4); % Sic1
    s_free = sqrt( ( (1/p.K_A + sum(u,2) - s) / 2 ).^2 + s/p.K_A ) - ( 1/p.K_A + sum(u,2) - s ) / 2 ;
    f  = 1 ./ (1 + s_free * p.K_A);
    
    if multipanel
        subplot(2,2,1);
    end
    
    if plot_datapoints
       ymax = 1.1*max(max(max(datapoints)),max(max(u)));
    else
        ymax = 1.1*max(max(u));
    end
    plot(t,u);
    axis([0 max(t) 0 ymax]) % have some white space in the upper graph
    
    if joinClbSic
        hold on
        plot(t,s,'k');
    end
    
    if plot_datapoints
        hold on
        ax = gca; ax.ColorOrderIndex = 1; % restart the coloring
        p1=plot(timepoints,datapoints,'o');
        set(p1,{'MarkerEdgeColor'}, {'none'},{'MarkerFaceColor'},{'r';'b';[0 0.5 0]})
        hold off
    end
    
    xlabel('Time (min)'); ylabel('Concentration (a.u.)')
    if joinClbSic
        legend('Clb5_T','Clb3_T','Clb2_T','Sic1_T','Location','northwest')
    else
        legend('Clb5_T','Clb3_T','Clb2_T','Location','northwest')
    end
    
    if multipanel
        subplot(2,2,2)
        plot(t,f,'k')
        legend('f')
        xlabel('Time (min)'); ylabel('%')
        
        subplot(2,2,3)
        plot(t,s,'k',t,s - s_free,'k--',t,s_free,'k.');
        axis([0 max(t) 0 1.25*max(s)+0.01])
        legend('Sic1_T','Sic1 \cdot Clb5,3,2', 'Sic1')
        xlabel('Time (min)'); ylabel('Concentration (a.u.)')
        
        subplot(2,2,4)
        plot(t, diag(1-f) * u ); hold on;
        ax = gca; ax.ColorOrderIndex = 1; % restart the color
        plot(t, diag(f) * u,'--'); hold off;
        axis([0 max(t) 0 1.3*max(max(max(diag(1-f) * u)),max(max(diag(f) * u)))]) % have some white space in the upper graph
        legend('Sic1 \cdot Clb5','Sic1 \cdot Clb3', 'Sic1 \cdot Clb2','Clb5','Clb3','Clb2','Location','northwest')
        xlabel('Time (min)'); ylabel('Concentration (a.u.)')
    end
    

end