a=2;
T=1;
np=200;
t = linspace(0,5,np);
t = linspace(0,5,np)';
w = 2*pi/T;
x = a*sin(w*t);
%plot(t,x)
%grid

y = a*cos(w*t);
%plot(t,y)
%grid


plot(t,[x,y])
grid