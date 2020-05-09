%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This script generates and stores matlab structures containing various
% variables used for analyzing models

% Thierry D.G.A. Mondeel - University of Amsterdam
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;

%% Developing model structures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% empty model
models.empty.name = '';
models.empty.pnames = {};
models.empty.pnamesTex = {};

%%%%%% design_1 model   
models.design_1 = models.empty;
models.design_1.name = 'design_1';
models.design_1.pnames = {'s_0','v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','l','e',...
    'a_xy','a_xz','a_yz','a_yy','a_zz',...
    'g_yx', 'g_zx', 'g_zy', 'g_yy', 'g_zz'};

%%%%%% design_2 
models.design_2 = models.empty;
models.design_2.name = 'design_2';
models.design_2.pnames = {'s_0','v_x','v_y','v_z','v_s','kp','km','b_x','b_y','b_z','b_s','d','e',...
    'a_xy','a_xz','a_yz','a_yy','a_zz',...
    'g_yx', 'g_zx', 'g_zy', 'g_yy', 'g_zz'};

%%%%%% design_3: The qss model
models.design_3 = models.empty;
models.design_3.name = 'design_3';
models.design_3.pnames = {'s_0','v_x','v_y','v_z','v_s','K_A', 'b_x', 'b_y', 'b_z', 'b_s', 'd', 'e',...
    'a_xy', 'a_xz','a_yz','a_yy', 'a_zz',...
    'g_yx', 'g_zx', 'g_zy', 'g_yy', 'g_zz'};
models.design_3.pnamesTex = {'s_0', 'v_x', 'v_y', 'v_z','v_s','K_A', '{\beta_x}', '{\beta_y}', '{\beta_z}', '{\beta_s}', '{\delta}', '{\epsilon}',...
    '{\alpha}_{xy}', '{\alpha}_{xz}','{\alpha}_{yz}','{\alpha}_{yy}', '{\alpha}_{zz}',...
    '{\gamma}_{yx}', '{\gamma}_{zx}', '{\gamma}_{zy}', '{\gamma}_{yy}', '{\gamma}_{zz}'};


%% Save this workspace
save('./Design_1-3_workspace.mat','models');