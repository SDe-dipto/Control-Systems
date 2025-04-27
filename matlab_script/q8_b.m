clc;clear;close all
global tstop tstep
tstop=10;tstep=0.001;
syms K
a=0;

alpha=@(K)1.812-0.031*K+(9.84/K);
i=1;
for K=1:2:63
    a(i)=alpha(K);
    
    i=i+1;
end
disp(a);
K=6;a=5.6;
num=[1 a];
den=[1 8 17 (K+10) (K*a)];
sim('sim_q8');
plot(time,out,time,inp);
grid on;
xlabel('Time');ylabel('System response');title('K=6,a=5.6');
