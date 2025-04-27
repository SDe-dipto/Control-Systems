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
al=2.6263;%Choosing random alpha value from set of values
for K=1:1:63
    num=[K al*K];
    den=[1 8 17 (K+10) (al*K)];
    sim('sim_q8');
    plot(time,out);
    grid on;
    hold on;
end
plot(time,inp);
xlabel('Time');ylabel('System response');title('Ramp response varying K');

figure('Name','Question8');
K=20;%Choosing random K value and varying alpha
for al=a
    
    num=[K al*K];
    den=[1 8 17 (K+10) (al*K)];
    sim('sim_q8');
    plot(time,out);
    grid on;
    hold on;
end
plot(time,inp);
xlabel('Time');ylabel('System response');title('Ramp response varying alpha');