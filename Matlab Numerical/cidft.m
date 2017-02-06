function [ft] = cidft(Fk)
[l,m] = size(Fk);
N = l + m - 1;
for n = 0:(N - 1)
    f = 0;
    for k = 0:(N - 1)
        f = f + Fk(k + 1)*exp(i*2*pi*k*(n/N));
    end
    ft(n + 1) = f;
end