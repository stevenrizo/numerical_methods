hold off
[t,y] = sampler(@(t) 5 + 4*cos(2*pi*100*t),1000,256);
plot(t,y)
Fk = cdft(y);
stem(abs(Fk))
freqs = dft_freqs(1000,256);
stem(freqs,abs(Fk))
ft = cidft(Fk)
plot(t,y,'.')
hold on
plot(t,real(ft),'r')
