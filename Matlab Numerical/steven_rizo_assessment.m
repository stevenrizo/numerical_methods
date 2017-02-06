%Assignment 1
R = 300;
L = 60;
C = 0.5;
w = [2*(10^3):10*(10^3)];
Z = sqrt(R^2 + (w*L - (1./(w*C))).^2);
plot(w,Z,'.')
xlabel('Angular Frequency (rad/s)')
ylabel('Impendance (ohm)')

%Assignment 2
M = load('assess01.txt');
x = M(:,1);
y = M(:,2);
s = M(:,3);
[max_val min_val std_val mean_val] = assignment2(y);

%Assignment 3
[col1,col2,col3,col4] = assignment3('assess02.txt')

%Assignment 4
x = assignment4(10,@(x) x - 2*exp(-x),100,10^(-5));