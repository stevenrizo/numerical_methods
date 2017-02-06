function [x] = linsoljacobi(A,b,x0,tol,N)
[m n] = size(A);
for iteration = 1:1:N
    for i = 1:1:n
        s = 0;
        for j = 1:1:n
            if (i ~= j)
                s = s + A(i,j)*x0(1,j);
            end
        end
        x(1,i) = (b(1,i) - s)/A(i,i);
    end
    y = x - x0;
    u = 0;
    for i = 1:1:n
        v = y(1,i)^2;
        u = u + v;
    end
    w = 0;
    for i = 1:1:n
        z = x(1,i)^2;
        w = w + z;
    end
    error = sqrt(u)/sqrt(w);
    a = subplot(1,1,1);
    scatter(iteration,error,100,'ok','filled');
    hold on;
    set(a,'YScale','log','FontSize',12,'box','on');
    axis([0 N,tol 0.1]);
    xlabel('Iteration Number');
    ylabel('Error');
    grid on;
    if (error < tol)
        break;
    end
    x0 = x;
end