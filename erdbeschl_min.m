function g_diff = erdbeschl_min(l, data, phi0, g)
    
    t_end = data(end,1);
    [t, u] = ode45(@(t,u) pendel_g_var(t,u,l,g), [0 t_end], [phi0 0]);
   
    
    g_diff = sum(sum(u - data(:,[2 3]).^2));

end