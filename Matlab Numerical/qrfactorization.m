function [Q,R] = qrfactorization(A)
[n,m] = size(A);
c = A(:,1);
e = zeros(n,1);
e(1,1) = sign(c(1,1));
H = householder(c,e);
Q = H;
R = H*A;
for i = 2:1:(n-1)
    c = R(:,i);
    c(1:i-1,1) = 0;
    e = zeros(n,1);
    e(i,1) = sign(c(i,1));
    H = householder(c,e);
    Q = Q*H;
    R = H*R;
end