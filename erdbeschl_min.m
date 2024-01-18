function g_diff = erdbeschl_min(g, l, data)
    
    [t, u] = ode45(@(t,u) pendel_g_var(t,u,l,g), data(:,1), [0 1]);

    g_diff = sum(sum((u - data(:, 2:3)).^2));

end

