function uPunkt = pendel_luftw(~,u)
% Modell Fadenpendel mit Luftwiderstand
g = 9.8; % Schwerbeschleunigung
m = 1; % Masse der Kugel in kg
l = 1; % Länge des Fadens in m
r = 0.1; % Radius der Kugel in m
J_kugel = 2/5 * m * r.^2; % Massenträgheitsmoment Kugel um Schwerp.
J = J_kugel + m * l.^2; % Massenträgheitsmoment Kugel um Drehpunkt
rho = 1.3; % Dichte der Luft
cW = 0.45; % cW-Wert einer Kugel
A = r.^2*pi; % Querschnittsfläche Kugel


uPunkt = [u(2)
          -m*g*l/J*sin(u(1))-1/2/J*rho*cW*A*l.^3*u(2).^2];

end