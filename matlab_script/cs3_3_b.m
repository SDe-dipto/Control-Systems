clc;clear;close all;
G=tf([10],[1 10]);
Gc=tf([2],[1 3 2]);
Fwdtf=G*Gc
Cltf=feedback(Fwdtf,1)

%Bode plot open loop
w=logspace(-1,4,200);
bode(Fwdtf,w);
grid on;
margin(Fwdtf)

%Bode plot closed loop
figure;
bode(Cltf,w);
grid on;
margin(Cltf)