function dydt = f(t, y, p) 
    eval(p);
    
    s_free = (sqrt( ( (1/K_A + (y(1)+y(2)+y(3)) - y(4)) / 2 )^2 + y(4)/K_A ) - ( 1/K_A + (y(1)+y(2)+y(3)) - y(4) ) / 2);
    f = 1 / (1 + s_free * K_A);

    % + recycling of Clb2,3 and no 1+ term and the d term is activated by
    % binary complexes joining with ternary complexes
    dydt = [ ...
        v_x - b_x * f * y(1) - e * (1-f) * y(1) - g_yx * f^2 * y(1) * y(2) - g_zx * f^2 * y(1) * y(3);
        v_y - b_y * f * y(2) - e * (1-f) * y(2) + a_xy * f * y(1) + a_yy * f * y(2)- g_yy * f^2 * y(2)^2 - g_zy * f^2 * y(3) * y(2);
        v_z - b_z * f * y(3) - e * (1-f) * y(3) + a_xz * f * y(1) + a_yz * f * y(2) + a_zz * f * y(3)- g_zz * f^2 * y(3)^2 ;
        v_s - b_s * s_free - e * (1-f) * (y(1) + y(2) + y(3)) - d * (1-f) * (y(1) + y(2) + y(3)) * f * (y(1) + y(2) + y(3));
    ];