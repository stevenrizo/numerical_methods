function [freqs] = dft_freqs(fs,N)
del_f = fs/N;
for k = 0:(N - 1)
    if (k <= N/2)
        freqs(k + 1) = k*del_f;
    else
        freqs(k + 1) = (k - N)*del_f;
    end
end