function [x] = backsub(U,b)
n = length(b)
x = zeros([1,n])
x(n) = b(n)/U(n,n)
for i = 1:1:(n-1)
    x(i) = (b(i) - sum)/U(i,i)
end