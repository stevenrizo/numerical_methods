function [x] = nonlinear_root(x0,fcn,nmax,tol)
x = x0;
for i = 1:nmax
    counter = i;
    x1 = x - (fcn(x).^2)./(fcn(x + fcn(x)) - fcn(x));
    error = sqrt(sum((x1-x)./x).^2);
    if (error < tol)
        break
    end
    x = x1;
end