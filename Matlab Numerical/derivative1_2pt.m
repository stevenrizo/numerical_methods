function [x1_2pt] = derivative1_2pt(x,t)
[r,c] = size(x);
N = r + c - 1;
h = t(2) - t(1);
for i = 1:N
    if (i == 1)
        x1_2pt(i) = (x(i+1) - x(i))/h;
    else
        if (i == N)
            x1_2pt(i) = (x(i) - x(i-1))/h;
        else
            x1_2pt(i) = (x(i+1) - x(i-1))/(2*h);
        end
    end
end