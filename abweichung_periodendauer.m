function diff = abweichung_periodendauer(phi0, zielabw, l)
zielabw = zielabw/100 + 1;

optionen = odeset('Events', @maximumsuche);
[t_T, ~] = ode45(@(t,u) pendel(t,u,l), [0 10], [phi0 0], optionen);
[t_n_T, ~] = ode45(@(t,u) pendel_kleine_a(t,u,l), [0 10], [phi0 0], optionen);

T_exakt = t_T(end);
T_naeherung = t_n_T(end);

diff = abs(T_exakt/T_naeherung - zielabw);

end