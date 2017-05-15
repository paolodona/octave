m=20;
K=2;
D=4;
num = [1];
denum=[m,D,K];
mfdsys==tf2sys(sum,denum);
sysout(mfdsys, 'tf');
step(mfdsys);
