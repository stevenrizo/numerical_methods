function [x] = hw3_bisection(tol,N,a,b)
fcn = @(x) x + 2*cos(x); %function to perform bisection over
x = (a + b)/2;
if fcn(x) ~= 0;
while counter < N and abs(fcn(x)) < tol
    x = (a + b)/2;
    if fcn(x) == 0;
        print('Root is: ',x);
    end;
    if fcn(a)*fcn(x) > 0;
        a = x;
    else;
        b = x;
    end;
end;
end;
x
fcn(x)