function g_diff = erdbeschl_min(params, l, data)
    
    g = params(1);
    phi0_punkt = params(2);

    t_lin = linspace(data(1,1), data(end,1), length(data(:,1)));
    [t, u] = ode45(@(t,u) pendel_g_var(t,u,l,g), t_lin, [0 phi0_punkt]);

    g_diff = sum(sum(u - data(:, 2:3).^2));

end