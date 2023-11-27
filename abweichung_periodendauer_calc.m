function diff = abweichung_periodendauer_calc(phi0)

optionen = odeset('Events', @maximumsuche);
[t_T, ~] = ode45(@pendel, [0 10], [phi0 0], optionen);
[t_n_T, ~] = ode45(@pendel_kleine_a, [0 10], [phi0 0], optionen);

T_exakt = t_T(end);
T_naeherung = t_n_T(end);

diff = ((T_exakt/T_naeherung) -1) * 100;

end