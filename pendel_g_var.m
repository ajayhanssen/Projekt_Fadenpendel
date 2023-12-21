function uPunkt = pendel_g_var(~,u,l,g)
% Modell Fadenpendel ohne Luftwiderstand
m = 1; % Masse der Kugel in kg
J = m * l.^2; % Massenträgheitsmoment Kugel um Drehpunkt

uPunkt = [u(2)
          -m*g*l/J * sin(u(1))];

end