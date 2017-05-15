clear
t=[0:1:20]';
u=-1+0.02*t;
y=sin(0.2*t);
plot(t,y,'r--',t,u,'b.')
%The optional argument 'r--' means red colour and dashes.
%The optional argument 'b.' means blue colour and dots.

xmin=0;xmax=30;ymin=-2;ymax=2;
axis([xmin xmax ymin ymax]);
grid
xlabel('t [sec]')
ylabel('y (dashed) and u (dots) [volt]')
title('Data from Experiment 1')
# replot
