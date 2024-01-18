function uPunkt = pendel(~,u,l)
% Modell Fadenpendel exakt
g = 9.8; % Schwerbeschleunigung

uPunkt = [u(2)
          -g/l * sin(u(1))];

end

