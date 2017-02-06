function [a] = example_gaussnewton(a0,Nmax,tol)
        filename = 'data03.txt';
        fcn = @(a,t) a(1)*t + 10*cos(a(2)*t) + a(3)*(t.^2);
        [t,y,s] = read_datafile(filename);
        W = diag(1./(s.^2));
        a = a0;
        for i = 1:Nmax
        J = Jacobian(a,t);
        ak = a + ((transpose(J)*W*J)^(-1))*(transpose(J)*W*(y - fcn(a,t)));
        error = sqrt(sum((ak-a).^2))/sqrt(sum(a.^2));
        if (error < tol)
            break
        end
        end
        a = ak;
end