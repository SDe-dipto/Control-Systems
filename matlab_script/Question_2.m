%Consider a series RLC circuit energized by a voltage source vi(t). The
%output is the voltage across the capacitance. Write down the dynamics of
%the given circuit and derive the transfer function relating to the voltage
%across the capacitor and the input source voltage. From the transfer
%function, derive the differential equation dynamics.
%Choosing C=0.01F, L=0.1H, R=33 ohms
%Observe the output for a unit step input using Simulink
close all;clc;

%Global declaration
global R L C
global tstop tstep
tstep = 0.001; 
tstop = 10;

R=33:33:99;
L=0.1;
C=0.01;
sim('Question2')
plot(time,vcout)
xlabel('Time in sec');ylabel('System response');title('RLC Circuit system response');
grid on;
legend('R=33','R=66','R=99');
