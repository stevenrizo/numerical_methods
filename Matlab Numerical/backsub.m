function [x] = backsub(U,b)
n = length(b);
x = zeros([1,n]);
x(n) = b(n)/U(n,n);
for i = (n-1):-1:1;
    sum = 0;
    for j = (i + 1):1:n;
        var = U(i,j)*x(j);
        sum = sum + var;
    end;
    x(i) = (b(i) - sum)/U(i,i);
end;