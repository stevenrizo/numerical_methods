function demoplotfcn(fcn_in,b,e,s)
x = b:s:e;
y = fcn_in(x);
plot(x,y);
xlabel('x');
ylabel('y');
%can plot made functions as well as built in functions and anonymous
%functions