function uPunkt = pendel_kleine_a(~,u,l)
% Modell Fadenpendel näherungsweise (kleine Auslenkungen)
g = 9.8; % Schwerbeschleunigung

uPunkt = [u(2)
          -g/l * u(1)];

end