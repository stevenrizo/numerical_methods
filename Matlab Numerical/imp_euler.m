function [x,y] = imp_euler(fcn,xi,yi,xf,N)
h = (xf - xi)/N;
x = linspace(xi,xf,(N+1));
y(1) = yi;
for i = 1:N
    y(i+1) = fsolve(@(n) n - y(i) - fcn(x(i+1),n)*h,y(i));
end