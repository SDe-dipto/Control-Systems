clear;close all;clc;
global tstop tstep
tstep=0.001; tstop=10;
%% 3.1: Keeping damping factor constant, varying natural frequency
for wn=1:1:20 
    num=[wn^2];
    den=[1 2*1.118*wn wn^2];
    sim('Secondorder.slx')
    plot(time,simout)
    xlabel('Time');ylabel('System Response');
    title('System response keeping damping ratio constant');
    grid on
    hold on     
end


%% 3.2 Keeping natural frequency constant, varying damping factor
figure;
for zeta=0.2:0.1:2
    num=[20]; den=[1 2*zeta*4.47 20];
    sim('Secondorder')
    plot(time,simout)
    xlabel('Time');ylabel('System Response');
    title('System response keeping natural frequency constant');
    grid on
    hold on
end

%% 3.3 Effect of additional zero
figure;
den = [1 10 20];
subplot(2,1,1);
num=[20 -200];
sim('Secondorder');
plot(time,simout);
xlabel('Time');ylabel('System Response');
titletext="Transfer function with zero: $\frac{20 (s-10)}{s^2 + 10s + 20}$";
title(titletext,Interpreter="latex");

subplot(2,1,2);
num=[20 200];
sim('Secondorder');
plot(time,simout);
xlabel('Time');ylabel('System Response');
titletext="Transfer function with zero: $\frac{20 (s+10)}{s^2 + 10s + 20}$";
title(titletext,Interpreter="latex");

