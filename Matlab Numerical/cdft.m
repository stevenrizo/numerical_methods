function [Fk] = cdft(ft)
[l,m] = size(ft);
N = l + m - 1;
for k = 0:(N - 1)
    f = 0;
    for n = 0:(N - 1)
        f = f + ft(n + 1)*exp(-i*2*pi*k*(n/N));
    end
    Fk(k + 1) = f/N;
end