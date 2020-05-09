function dydt = f(t, y, p) 
    eval(p);

    dydt = [ ...
        v_x - b_x * y(1) - kp * y(7) * y(1) + km * y(4) - g_yx * y(1) * y(2) - g_zx * y(1) * y(3) + d * y(4) * (y(1) + y(2) + y(3)) + l * y(4);
        v_y - b_y * y(2) - kp * y(7) * y(2) + km * y(5) + a_xy * y(1) + a_yy * y(2) - g_yy * y(2)^2 - g_zy * y(3) * y(2);
        v_z - b_z * y(3) - kp * y(7) * y(3) + km * y(6) + a_xz * y(1) + a_yz * y(2) + a_zz * y(3) - g_zz * y(3)^2;
        kp * y(7) * y(1) - km * y(4) - d * y(4) * (y(1) + y(2) + y(3)) - l * y(4) - e * y(4);
        kp * y(7) * y(2) - km * y(5) - d * y(5) * (y(1) + y(2) + y(3)) - l * y(5) - e * y(5);
        kp * y(7) * y(3) - km * y(6) - d * y(6) * (y(1) + y(2) + y(3)) - l * y(6) - e * y(6);
        v_s - b_s * y(7) - kp * y(7) * (y(1) + y(2) + y(3)) + km * (y(4) + y(5) + y(6));
    ];