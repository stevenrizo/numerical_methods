filename = 'data03.txt';
fcn = @(a,t) a(1)*t + 10*cos(a(2)*t) + a(3)*(t^2);
[t,y,s] = read_datafile(filename);
errorbar(t,y,s);
xlabel('time (seconds)');
ylabel('Amp (V)');
hold on;
function [a] = example_gaussnewton(a0,Nmax,tol)
        ak1 = a0
        for i = 1:Nmax
        J = Jacobian(ak1,t)
        ak2 = ak1 + ((transpose(J)*W*J)^(-1))*(transpose(J)*W*(y - fcn(ak1,t)))
        error = sqrt(sum((ak2-ak1).^2))/sqrt(sum(ak1.^2))
        if (error < tol)
            break
        end
        end
        ak1 = ak2
end