function [L,U] = croutLUdec(A)
[n m] = size(A)
L = zeros([n m])
U = zeros([n m])
for i = 1:1:n
    L(i,1) = A(i,1)
end
for i = 1:1:n
    U(i,i) = 1
end
for i = 2:1:n
    U(1,i) = A(1,i)/L(1,1)
end
for i = 2:1:n
    for j = 2:1:i
        sum = 0
        for k = 1:1:(j-1)
            var = L(i,k)*U(k,j)
            sum = sum + var
        end
        L(i,j) = A(i,j) - sum
    end
    for j = (i +1):1:n
        sum = 0
        for k = 1:1:(j-1)
            var = L(i,k)*U(k,j)
            sum = sum + var
        end
        U(i,j) = (A(i,j) - sum)/L(i,i)
    end
end