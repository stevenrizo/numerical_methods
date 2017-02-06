function [H] = householder(c,e)
%c and e are nX1 column input vectors
[n,m] = size(c);
v = c + norm(c,2)*e;
vt = transpose(v);
H = eye(n) - (2/(vt*v))*(v)*(vt);
