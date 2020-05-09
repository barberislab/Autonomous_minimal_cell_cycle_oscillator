function derivatives = ODE_design3(~,X,p,model)
% RETURNS THE ODE SYSTEM TO BE SOLVED. Input:
% ~     placeholder for the obligatory t parameter from solver
% x     comes from the solver containing current state vector
% p     structure containing all parameter values
% ~     unused 4th parameter
x = X(1); y = X(2); z = X(3); s = X(4);

% Define and return the system of ODEs
s_free = sqrt( ( (1/p.K_A + (x+y+z) - s) / 2 )^2 + s/p.K_A ) - ( 1/p.K_A + (x+y+z) - s ) / 2 ;
f = 1 / (1 + s_free * p.K_A);


xdot = p.v_x - p.b_x * f * x - p.e * (1-f) * x - p.g_yx * f^2 * x * y - p.g_zx * f^2 * x * z ;
ydot = p.v_y - p.b_y * f * y - p.e * (1-f) * y + p.a_xy * f * x + p.a_yy * f * y - p.g_yy * f^2 * y^2 - p.g_zy * f^2 * z * y ;
zdot = p.v_z - p.b_z * f * z - p.e * (1-f) * z + p.a_xz * f * x + p.a_yz * f * y + p.a_zz * f * z - p.g_zz * f^2 * z^2 ;
sdot = p.v_s - p.b_s * s_free - p.e * (1-f) * (x+y+z) - p.d * (1-f) * (x+y+z) * f * (x + y + z); 


derivatives = [xdot; ydot; zdot; sdot];
end