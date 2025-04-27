%part 1
clear ;
close;
clc;
global num den K
global tstep tstop
tstep=0.001;
tstop=20;
num=[1 -1 2];
den=[1 2 1];
K=1;
sim('sim_7.slx')
subplot(3,1,1)
plot(time,out,'g',time,inp,'b')
title('K=1')
K=2;
sim('sim_7.slx')
subplot(3,1,2)
plot(time,out,'g',time,inp,'b')
title('K=2')
K=5;
sim('sim_7.slx')
subplot(3,1,3)
plot(time,out,'g',time,inp,'b')
title('K=5')
% subplot(1,1,1)
figure
G=tf(num,den)
pzplot(K*G)
grid
p=pole(K*G)
z=zero(K*G)
