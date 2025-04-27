clc;clear;close all;

G=tf([100],[1 6 0]);
sys=feedback(G,1)
%Closed Bode plot
w=logspace(-1,3,1000);
bode(sys,w);grid on;
title('Bode plot for closed loop system');


%Estimating damping ratio
syms zeta
Mpw=1/(2*zeta*(1-sqrt(1-zeta*zeta)))==1.74;
z=solve(Mpw,zeta);
simplify(z);
%From the system function, it's estimated that zeta=0.3

%Actual damping ratio
damp(sys)
p=roots([1 6 0])