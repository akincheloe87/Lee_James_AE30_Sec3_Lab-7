function [v0,theta,t] = projectile_inputs
%projectile_inputs takes user inputs of initial velocity, the angle of
%departure and the instataneous time and puts it into a vector.

v0 = input('Please input the initial velocity in [m/s]:\n');
theta = input('Please input the angle of departure in [deg]:\n');
t = input('Please input the instataneous time in [s]:\n');
while v0 < 0 || theta < 0 || t < 0
    v0 = input('Please reinput the non-negative initial velocity in [m/s]:\n');
    theta = input('Please reinput the non-negative angle of departure in [deg]:\n');
    t = input('Please reinput the non-negative instataneous time in [s]:\n');
end

