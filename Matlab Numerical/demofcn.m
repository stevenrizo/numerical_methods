%f(theta) = 8 - 4.5*theta + 4.5*sin(theta)
%[ftheta] = demofcn(theta)
%input theta must be in radians
function [ftheta] = demofcn(theta)
ftheta = 8 - 4.5*theta + 4.5*sin(theta)
%command window: demofcn(2.5)