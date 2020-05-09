function [ derivatives ] = ODE_design12( ~,X,p,model )
%ODEbarberis2012
% Generate system of equations for the model in Barberis 2012-1
% t     	placeholder for the obligatory t parameter from solver
% X     	comes from the solver containing current state vector
% p         structure containing all parameter values
% model 	a string indicating which variant of the model to simulate

% Extract current concentrations
x = X(1); y = X(2); z = X(3); sx = X(4); sy = X(5); sz = X(6); s = X(7);

%%% Define model equations
switch model.name
        
    case 'design_1'
        % The 2012 model without inhibition but with a Sic1 synthesis term
        % and equal parameters
        % A => all gamma = 0,a_yy = 0
        % B => with gamma's and a_yy
        % C => with lambda = 0
        xdot = p.v_x - p.b_x * x - p.kp * s * x + p.km * sx - p.g_yx * x * y - p.g_zx * x * z + p.d * sx * (x + y + z) + p.l * sx;
        ydot = p.v_y - p.b_y * y - p.kp * s * y + p.km * sy + p.a_xy * x + p.a_yy * y - p.g_yy * y^2 - p.g_zy * z * y;
        zdot = p.v_z - p.b_z * z - p.kp * s * z + p.km * sz + p.a_xz * x + p.a_yz * y + p.a_zz * z - p.g_zz * z^2;
        
        sxdot = p.kp * s * x - p.km * sx - p.d * sx * (x + y + z) - p.l * sx - p.e * sx;
        sydot = p.kp * s * y - p.km * sy - p.d * sy * (x + y + z) - p.l * sy - p.e * sy;
        szdot = p.kp * s * z - p.km * sz - p.d * sz * (x + y + z) - p.l * sz - p.e * sz;
        
        sdot = p.v_s - p.b_s * s - p.kp * s * sum([x y z]) + p.km * sum([sx sy sz]);
        
   case 'design_2'
        % recycling of Clb23 upon Sic1 degradation from ternary complex
        % removed lambda
        xdot = p.v_x - p.b_x * x - p.kp * s * x + p.km * sx - p.g_yx * x * y - p.g_zx * x * z + p.d * sx * (x + y + z);
        ydot = p.v_y - p.b_y * y - p.kp * s * y + p.km * sy + p.a_xy * x + p.a_yy * y - p.g_yy * y^2 - p.g_zy * z * y + p.d * sy * (x + y + z);
        zdot = p.v_z - p.b_z * z - p.kp * s * z + p.km * sz + p.a_xz * x + p.a_yz * y + p.a_zz * z - p.g_zz * z^2 + p.d * sz * (x + y + z);
        
        sxdot = p.kp * s * x - p.km * sx - p.d * sx * (x + y + z) - p.e * sx;
        sydot = p.kp * s * y - p.km * sy - p.d * sy * (x + y + z) - p.e * sy;
        szdot = p.kp * s * z - p.km * sz - p.d * sz * (x + y + z) - p.e * sz;
        
        sdot = p.v_s - p.b_s * s - p.kp * s * sum([x y z]) + p.km * sum([sx sy sz]);
        
    otherwise
        disp('Invalid model ID!')
        return
end

derivatives = [xdot; ydot; zdot; sxdot; sydot; szdot; sdot];
end