function g_diff = erdbeschl_min(params, l, data)
    
    g = params(1);
    phi0 = params(2);

    t_lin = linspace(data(1,1), data(end,1), length(data(:,1)));
    [~, u] = ode45(@(t,u) pendel_g_var(t,u,l,g), t_lin, [phi0 0]);
    
    %u
    %data(:,2:3)
    

    g_diff = sum(sum(u - data(:, 2:3).^2));

end