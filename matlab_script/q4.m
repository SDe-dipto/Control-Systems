clear all; close all; clc;
k = 2;

sys = tf([k],[1 21 20 k])
t = 0:0.1:100;


% bode diagram
w = logspace(-1, 3, 100);
bode(sys, w);grid on;margin(sys);

% from plot:- wr = 0.1 and Mpw = -2.55
% Using Mpw equation, zeta = 0.19 & 0.98
zeta = 0.19;
wn = 0.1/(sqrt(1-(2*zeta*zeta)))

%  Mpw vs zeta
zeta = 0.15:0.01:0.707;
figure('Name','Response between Mpw and zeta');
syms z
func_Mpw = @(z) 1./(2.*z.*sqrt(1-(z.^2)));
mpw = func_Mpw(zeta);
subplot(2,1,1);
plot(zeta,mpw); xlabel("zeta"); ylabel("Mpw");
title('Mpw vs zeta');grid on;

% wr/wn vs zeta
func_wrwn =@(z) sqrt(1-(2.*z.*z));
wr_wn = func_wrwn(zeta);
subplot(2,1,2);
plot(zeta, wr_wn); xlabel("zeta"); ylabel("wr/wn");
title('wr/wn vs zeta');grid on;

%Plotting step response
figure;
step = ones(length(t),1)';
lsimplot(sys,step,t);grid on;