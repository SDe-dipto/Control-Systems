clear; clc;
global tstep tstop num dem d st iv fv
% d = disturbance 
% st = Step time for input
% iv = initial value of input
% fv = final value of input
tstop = 8; tstep = 0.001;

num = 1; 

% Case 2
subplot(122)
d = 0; st = 0; iv = 0; fv = 1;
hold on;
for p = [1 2 5]
    dem = [1 p 0];
    sim('q6sim');  
    tf(num,dem)
    plot(time, out1,LineWidth=2);
end
plot(time, ref1, time, refd); 
legend("p = 1","p = 2","p = 5","Input","Disturbance");
xlabel("time"); ylabel("System Response");
title("Unit Step response")