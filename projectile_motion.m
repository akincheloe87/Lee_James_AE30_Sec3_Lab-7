function [ x,y,tf,d,h ] = projectile_motion (v_0,theta,t)
%PROJECTILE_MOTION Using instantaneous velocity, angle of departure, and
%time to output x position, y position, time final, distance traveled, and
%maximum height. 

g=9.81;
x = v_0*cosd(theta)*t;
y = v_0.*sind(theta).*t-(1/2.*g.*(t.^2));
t_Vy = (v_0.*sind(theta))./g;
tf = (v_0*sind(theta))/(1/2*g);
d = v_0.*cosd(theta).*tf;
h = v_0.*sind(theta).*t_Vy-(1/2.*g.*(t_Vy.^2));
if t>tf
    fprintf('Error the time range of this projectile is %.4f.\n',tf)
else
    fprintf('The instantaneous position is [%.3f,%.3f].\n',x,y)
    fprintf('The total distance traveled is %.4f.\n',d)
    fprintf('The maximum height is %.4f.\n',h)
end


