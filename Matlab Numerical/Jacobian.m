function [J] = Jacobian(a,t)
        J(:,1) = t;
        J(:,2) = -10*t.*sin(a(2)*t);
        J(:,3) = t.^2;
    end