function g_diff = erdbeschl_min(l, data, phi0, g)
    
    t_end = data(end,1);
    [t, u] = ode45(@(t,u) pendel_g_var(t,u,l,g), [0 t_end], [phi0 0]);
    coeffs = polyfit(t, u(:,1), length(t)-1);
    fun = @(x) polyval(coeffs,x);
    u_1_int = fun(data(:,1))
    g_diff = abs(data(:,2)) - abs(u_1_int);
    

end