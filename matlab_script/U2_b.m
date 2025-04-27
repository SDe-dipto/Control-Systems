%b. Consider G2(s)=10/s2 + as + 10. Compare in terms of rise time, the
%settling time, peak overshoot, and steady-state value. The step responses
%of this system for different values of a: Choose a=0.1, 2.5, 5, 7.5, 10.
%Ask questions similar to that in 3.a, and discuss the results.
clc;clear;close all;
global tstop tstep;
tstep=0.001;tstop=10;
num=[10];
a=[0.1 2.5 5 7.5 10];
for p=a
den=[1 p 10];
sim('U2_bsim');
plot(time,simout)
grid on;
hold on;
end
legend('a=0.1','a=2.5','a=5','a=7.5','a=10');