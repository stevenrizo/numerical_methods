function [t,y] = sampler(fcn,fs,N)
t = [0:1/fs:(N-1)/fs];
y = fcn(t);