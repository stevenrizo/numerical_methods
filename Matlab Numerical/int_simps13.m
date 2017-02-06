function [result_simps] = int_simps13(fcn,a,b,N)
x = linspace(a,b,N+1);
h = (b - a)/N;
evensum = 0;
oddsum = 0;
for i = 2:N
    if (mod(i,2) == 0)
        evensum = evensum + fcn(x(i));
    else
        oddsum = oddsum + fcn(x(i));
    end
end
result_simps = (h/3)*(fcn(a) + 4*evensum + 2*oddsum + fcn(b));