clc;clear;close all;
global tstep tstop;
tstep=0.001;tstop=10;

%Response for g3(s)
num=10;
den=[1 2 10];
figure('Name','G3(s) response');
sim('sim_qn5');
subplot(211);plot(time,simout2,time,step,Linewidth=1.3);
xlabel('time');ylabel('G3(s) step response');title('G3(s) responses');
legend('Output','Input');
subplot(212);plot(time,simout1,time,ramp,Linewidth=1.3);
xlabel('time');ylabel('G3(s) ramp response');title('G3(s) responses');
legend('Output','Input');

%Responses for G4(s)
figure('Name','System response for G4(s)');
num=[10 10];den=[1 10 10 10];
sim('sim_qn5');
subplot(211);plot(time,simout2,time,step,Linewidth=1.3);
xlabel('time');ylabel('G4(s) step response');title('G4(s) responses');
legend('Output','Input');
subplot(212);plot(time,simout1,time,ramp,Linewidth=1.3);
xlabel('time');ylabel('G4(s) ramp response');title('G4(s) responses');
legend('Output','Input');