function demosubfcn(fcn_in,b,e,s)
%primary
[x,y] = createxy(fcn_in,b,e,s);
graphxy(x,y);
%subfunction 1
function[x1,y1] = createxy(fcn_in,b,e,s)
x1 = b:s:e;
y1 = fcn_in(x1);
%subfunction 2
function graphxy(x2,y2)
plot(x2,y2);
xlabel('x');
ylabel('y');
%in command window: demosubfcn(@sin,o,2*pi,o.1)