function [x2_3pt] = derivative2_3pt(x,t)
[r,c] = size(x);
N = r + c - 1;
h = t(2) - t(1);
for i = 1:N
    if (i == 1)
        x2_3pt(i) = (x(i) - 2*x(i+1) + x(i+2))/(h^2);
    else
        if (i == N)
            x2_3pt(i) = (x(i-2) - 2*x(i-1) + x(i))/(h^2);
        else
            x2_3pt(i) = (x(i+1) - 2*x(i) + x(i-1))/(h^2);
        end
    end
end