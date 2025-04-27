%d. Consider G4(s)=10(s/a + 1)/s2 + 2s + 10. Repeat the experiment 3.b for
%different values of a. Choose a=0.1,1,10,100. In your discussion, include
%as well a comparison of these results with those obtained in 3.b.
clc;clear;close all;
global tstep tstop;
tstep=0.001;tstop=10;

for a=[0.1 1 10 100]
sim('U2_dsim');
plot(time,simout);
hold on;
grid on;
end

legend('p=0.1','p=1','p=10','p=100');