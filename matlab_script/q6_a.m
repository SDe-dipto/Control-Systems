clc;clear;close all;
global tstop tstep
tstop=8;tstep=0.001;
in=[0,0];
%Impulse response
figure('Name','Question 6.1 Impulse');
for p=[1,2,5]
    num=1;
    den=[1 p 0];
    sim('sim_6a_imp');
    plot(time,out);
    hold on;
    
    grid on;
end
hold on;plot(time,inp);
xlabel('Time');ylabel('system response');title('Impulse input response');
legend('p=1','p=2','p=5','impulse input');

%Step response
figure('Name','Question 6.1 Step');
for p=[1,2,5]
    num=1;
    den=[1 p 0];
    sim('sim_qn6a');
    plot(time,out);
    hold on;
    grid on;
end
hold on;plot(time,inp);
xlabel('Time');ylabel('system response');title('Step input response');
legend('p=1','p=2','p=5','step input');

%disturbance
figure('Name','Question 6.1 Step');
for p=[1,2,5]
    num=1;
    den=[1 p 0];
    sim('sim_6a_dis');
    plot(time,out);
    hold on;
    grid on;
end
hold on;plot(time,inp);
xlabel('Time');ylabel('system response');title('Step input response with disturbance');
legend('p=1','p=2','p=5','step input');