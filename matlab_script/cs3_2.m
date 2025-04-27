clc;clear;close all;
global tstop tstep
tstop=10;tstep=0.001;

num=[1];
den=[1 5 6];
G=tf(num,den);
sys=feedback(G,1);
rlocus(G)
figure;
for K=[1:1:14]
    
    sim('sim_cs3_2');
    plot(time,out);
    grid on;
    hold on;
    
end
xlabel('Time');ylabel('System response');title('Step input system response');
