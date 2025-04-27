% Consider G1(s) = 1/s+p. Compare in terms of rise time and steady-state
% value the step responses of this system for different values of p.(For 
% purposes of this experiment, assume the following definition of rise time
% : the time taken for the output to reach 90% of the final steady-state value 
% Choose p=0.5,1,2,10. Based on this, where should one locate a pole  if the
% requirement is a fast response? Where should one locate the pole if the
% steady-state value of the output is expected to be equal to the input
% value? Can one independently satisfy both requirements?

clc;clear;close all;
global tstop tstep;
tstep=0.001;tstop=10;
p=[0.5 1 2 10];
for k=p
    den=[1 k];
    num=[1];
    sim('U2_asim');
    plot(time,simout)
    grid on;
    hold on;
end
legend('p=0.5','p=1','p=2','p=10');