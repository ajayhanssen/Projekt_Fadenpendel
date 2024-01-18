close all
clear all
l = 3; % Länge des Fadens in m
t_step = 0.1; % Animationspause

[t,u] = ode45(@(t,u) pendel(t,u,l), [0 5], [pi/4 0]);

plot(0,0,'x')
xlabel('x-Achse')
ylabel('y-Achse')
axis([-l l -l l])
hold on


for i = 1:length(t)
    xkor = l*sin(u(i,1));
    ykor = -l*cos(u(i,1));
    point = plot(xkor,ykor,'ro')
    line = plot([0 xkor],[0 ykor],'k')
    
    % Exporting every frame
    frame = getframe(gcf);
    filename = sprintf('frame_%03d.png', i);
    imwrite(frame.cdata, filename);

    pause(t_step);

    % Deleting plotted objects
    delete(point);
    delete(line);
end

