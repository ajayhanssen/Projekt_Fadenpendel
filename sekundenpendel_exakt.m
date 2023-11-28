function T_diff = sekundenpendel_exakt(phi0,l)

optionen = odeset('Events', @maximumsuche);
[t_T, ~] = ode45(@(t,u) pendel(t,u,l), [0 10], [phi0 0], optionen);

T_exakt = t_T(end);
T_diff = abs(T_exakt - 2);


end