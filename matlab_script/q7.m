clc;clear;close all
global tstop tstep
tstop=10;tstep=0.001;

G1=tf([1],[1 2 4 0]);
for k=1:1:8
    T=feedback(k*G1,1);
    pzmap(T);
    
    grid on;
    hold on;
end
legend('k=1','k=2','k=3','k=4','k=5','k=6','k=7','k=8');

figure('Name','Question 7');
for K=[4 8]
    num=[1];
    den=[1 2 4 0];
    sim('sim_7');
    plot(time,out);
    hold on;
    grid on;
end
plot(time,inp);
xlabel('Time');ylabel('system response');title('Step response');
legend('k=4','k=8');