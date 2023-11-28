function uPunkt = pendel_kleine_a(~,u,l)
% Modell Fadenpendel ohne Luftwiderstand
g = 9.8; % Schwerbeschleunigung
m = 1; % Masse der Kugel in kg
r = 0.1; % Radius der Kugel in m
J_kugel = 2/5 * m * r.^2; % Massenträgheitsmoment Kugel um Schwerp.
J = m * l.^2; % Massenträgheitsmoment Kugel um Drehpunkt

uPunkt = [u(2)
          -m*g*l/J * u(1)];

end