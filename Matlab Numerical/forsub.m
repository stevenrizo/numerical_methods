function [x] = forsub(L,b)
n = length(b)
x = zeros([1,n])
x(1) = b(1)/L(1,1)
for i = 2:1:n
    sum = 0
    for j = 1:1:(i-1)
        var = L(i,j)*x(j)
        sum = sum + var
    end
    x(i) = (b(i) - sum)/L(i,i)
end