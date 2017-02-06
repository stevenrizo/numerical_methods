clc
hold off
%assignment 1
[xe10,ye10] = exp_euler(@(x,y) x - (x*y)/2,1,1,3.4,10);
plot(xe10,ye10,'g')
hold on
[xe100,ye100] = exp_euler(@(x,y) x - (x*y)/2,1,1,3.4,100);
plot(xe100,ye100,'b')
x = linspace(1,3.4,100);
y = @(x) 2 - exp((1 - x.^2)/4);
ya = y(x);
plot(x,ya,'r')

%assignment2
[xi10,yi10] = imp_euler(@(x,y) x - (x*y)/2,1,1,3.4,10);
plot(xi10,yi10,'c')
[xi100,yi100] = imp_euler(@(x,y) x - (x*y)/2,1,1,3.4,100);
plot(xi100,yi100,'k')