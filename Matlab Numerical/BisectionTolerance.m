%Bisection Method within Tolerance
a = input('lower end estimate');
b = input('higher end estimate');
tol = input('tolerance');
fcn = @(x) x + 2*cos(x); %function to perform bisection over
x = (a + b)/2;
if fcn(x) ~= 0;
while (abs(fcn(x)) >= tol);
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