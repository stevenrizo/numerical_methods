function nonlinear_fit

fcn = @(p,t) p(1)*t + 10*cos(p(2)*t) + p(3)*(t^2);
[t,y,s] = read_datafile('data03.txt');
errorbar(t,y,s);

deviation = std(y)

function [J] = Jacobian(p,t)
J(:,1) = t;
J(:,2) = -10*t.*sin(p(2)*t);
J(:,3) = t.^2;
end

J = Jacobian([1;1;1],t); 
Jsum = sum(J)
end


