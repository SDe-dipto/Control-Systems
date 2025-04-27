clc;clear;close all;
global tstop tstep
tstop=8;tstep=0.001;
in=[0,0];


i=1;
%Impulse
figure('Name','Question 6.1 Impulse');
for K=[20 100]
    subplot(2,1,i);
    for p=[1 2 5]
        num=[11 K];
        den=[1 p 0];
        sim('sim_6b_imp');
        plot(time,out);
        hold on;
    end
    plot(time,inp);
    xlabel('Time');ylabel('system response');title('Impulse response ');
    legend('p=1','p=2','p=5','impulse input');
    i=i+1;
end

%Step
j=1;
figure('Name','Question 6.2 Step');
for K=[20 100]
    subplot(2,1,j);
    for p=[1 2 5]
        num=[11 K];
        den=[1 p 0];
        sim('sim_6b_step');
        plot(time,out);
        hold on;
    end
    plot(time,inp);
    xlabel('Time');ylabel('system response');title('Step response ');
    legend('p=1','p=2','p=5','Step input');
    j=j+1;
end

%Disturbance
k=1;
figure('Name','Question 6.1 Step disturbance');
for K=[20 100]
    subplot(2,1,k);
for p=[1,2,5]
    num=[11 K];
    den=[1 p 0];
    sim('sim_6b_dis');
    plot(time,out);
    hold on;
    grid on;
end
plot(time,inp+1);
xlabel('Time');ylabel('system response');title('Step input response with disturbance');
legend('p=1','p=2','p=5','step disturbance');
k=k+1;
end