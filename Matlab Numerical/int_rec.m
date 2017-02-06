function [result_rec] = int_rec(fcn,a,b,N)
x = linspace(a,b,N+1);
result_rec = 0;
h = (b - a)/N;
for i = 1:N
    result_rec = result_rec + h*fcn(x(i));
end