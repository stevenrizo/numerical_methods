hold off
t = [0:0.1:2]
f = @(t) cos(8*t).*exp(-0.2*t);
x = f(t);
plot(t,x,'k')
hold on
df = @(t) exp(-0.2*t).*(-0.2*cos(8*t) - 8*sin(8*t));
x1_2pt = derivative1_2pt(x,t);
plot(t,x1_2pt,'g.')
plot(t,df(t))
df2 = @(t) exp(-0.2*t).*(-63.96*cos(8*t) + 3.2*sin(8*t));
x2_3pt = derivative2_3pt(x,t)
plot(t,x2_3pt,'r.')
plot(t,df2(t),'y')