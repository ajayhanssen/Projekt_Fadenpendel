close all
clear all
l = 1; % Länge des Fadens in m
t_step = 0.1; % Animationspause

[t,u] = ode45(@pendel, [0 10], [pi/4 0]);

plot(0,0,'x')
axis([-1 1 -1 1])
hold on

% Beispiel ohne Luftwiderstand
for i = 1:length(t)
    xkor = l*sin(u(i,1));
    ykor = -l*cos(u(i,1));
    point = plot(xkor,ykor,'ro')
    line = plot([0 xkor],[0 ykor],'k')
    pause(t_step);
    delete(point);
    delete(line);
end

