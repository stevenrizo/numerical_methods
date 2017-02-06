function [ev] = qriteration(A,Nmax,tol)
for i = 1:Nmax
    [Q,R] = qrfactorization(A)
    A1 = transpose(Q)*A*Q
    ev0 = diag(A)
    ev = diag(A1)
    error = sqrt((ev0-ev)).^2)/sqrt(ev0.^2)
    if error < tol
        break
    end
end
