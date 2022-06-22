function first(N)

t = 0:(.99*pi/2):N;
x = t.*cos(t);
y = t.*sin(t);
plot(x,y,'k')
clcaxis square