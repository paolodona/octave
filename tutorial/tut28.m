clear;
ms = 30;

r = @(x) x*2*pi; % to radiants

x = [-ms:0.02:ms];
a3 = sin(r(x)*220/1000);
a4 = sin(r(x)*440/1000);
e4 = sin(r(x)*329.63/1000);
c4 = sin(r(x)*261.63/1000);
cs4 = sin(r(x)*277.18/1000);

plot(x,a3, 'b');
hold on;
#plot(x,a4,'b.');
#plot(x,e4,'g.'); #5th
#plot(x,c4,'r.'); #3rd minor
plot(x,cs4,'g.'); #3rd major
hold off;

grid;
axis([-ms ms -2 +2])
legend('root', '5th', '3rd minor', '3rd major');
xlabel('ms')
