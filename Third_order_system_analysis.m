%% Question 2  
% Open Loop Transfer Function 
n1=[10]; d1=[1 10]; 
n2=[11.4]; d2=[1 1.4 0]; 
n = conv(n1,n2); 
d = conv(d1,d2); 
% Open Loop TF 
OLTF = tf(n,d) 
% Poles and Zeroes of OLTF 
[zero, pole] = tf2zp(n,d) 

%% Question 3 
pzmap(OLTF) 

%% q4 Simulink 
sim("OLTF_step") 
plot(time, out, Linewidth = 1.3) 
hold on  
plot(time, ref, LineWidth=1.3) 
legend("Response","Input")   
xlabel('time'); ylabel('Amplitude'); 
title("Open loop Step Response") 

%% q4 Simulink 
sim("OLTF_ramp") 
plot(time, out, Linewidth = 1.3) 
hold on  
plot(time, ref, LineWidth=1.3) 
legend("Response","Input")   
xlabel('time'); ylabel('Amplitude'); 
title("Open loop Step Response") 

% Stepinfo results 
stepinfo(OLTF) 
[y,t] = step(OLTF); % get the response of the system to a unit step 
sserror = abs(1-y(end)) % get the steady state error

%% q5 simulink 
global k tstop 
k = 0; tstop = 25 
hold on  
for k = [0.1,0.5,0.9]    
    sim("CLTF_step") 
    plot(time, out, LineWidth = 1.3) 
end 
legend('k = 0.1','k = 0.5','k = 0.9')   
xlabel('time'); ylabel('Amplitude'); 
title("Closed loop Step Response"); 
figure; tstop = 140; 
hold on 
for k = [1.1,1.3]    
    sim("CLTF_step") 
    plot(time, out, LineWidth = 1.3) 
end 
legend('k = 1.1','k = 1.3')   
xlabel('time'); ylabel('Amplitude'); 
title("Closed loop Step Response"); 
figure; tstop = 10   
k = 1.4    
sim("CLTF_step") 
plot(time, out, LineWidth = 1.3) 
legend('k = 1.4')   
xlabel('time'); ylabel('Amplitude'); 
title("Closed loop Step Response"); 
figure 
step(feedback(OLTF,1)) 
stepinfo(feedback(OLTF,1))


%% Question 6 
CLTF = feedback(OLTF,1); 
rlocus(OLTF)


%% Controllers

% for gain kp = 0.6578 
CLTFF1 = feedback(0.6578*OLTF,1); 
step(CLTFF1); damp(CLTFF1) 


%% Question 10     
clear; close; clc; 
OLTF = tf([114],[1 11.4 14 0]) 
rl = rlocus(OLTF) 
hold on  
plot(-2,+3/2,'.', 'MarkerSize', 9) 
plot(-2,-3/2,'.', 'MarkerSize', 9)


CLTFF2 = feedback(0.06*OLTF,1); 
step(CLTFF2); damp(CLTFF2) 
CLTFF3 = feedback(0.063*OLTF,1); 
step(CLTFF3); damp(CLTFF3) 
legend("K = 0.06","K = 0.063")


% Sim Results 
figure 
kp = 0.063;  
sim("CS_proj_P") 
hold on 
plot(time,vcout, LineWidth=1.2); 
plot(time,input, LineWidth=1.2); 
legend("Step Response","INPUT") 
figure 
plot(time, ut, LineWidth=1.2); 
legend("Controller Effort U(s) = E(s) - R(s)") 


%% Question 11 
clear all; close all; clc; 
OLTF = tf([114],[1 11.4 14 0]) 
% K1 + K2s = 0.6578 + 0.4407s 
k1 = 0.6578  
k2 = 0.4407 
Gc = [k2 k1]; 
n = 114*Gc 
OLTFF1 = tf(n,OLTF.Denominator) 
CLTFF1 = feedback(OLTFF1,1) 
step(CLTFF1); damp(CLTFF1);


%%  Question 12  
clear all; close all; clc; 
OLTF = tf([114],[1 11.4 14 0]) 
k1 = 15.78 
k3 = 12.07 
k = k3/k1 
Gc = tf(k1*[1 k],[1 0]); 
OLTFF1 = OLTF*Gc 
CLTFF1 = feedback(OLTFF1,1) 
step(CLTFF1); damp(CLTFF1); 


figure 
% k3 = 1 k1 = 1 
k1 = 1 
k3 = 1 
k = k3/k1 
Gc = tf(k1*[1 k],[1 0]); 
OLTFF3 = OLTF*Gc 
CLTFF3 = feedback(OLTFF3,1) 
step(CLTFF3); damp(CLTFF3); 


figure 
% k3 = 0.01 k1 = 0.06 
k1 = 0.06 
k3 = 0.01 
k = k3/k1 
Gc = tf(k1*[1 k],[1 0]); 
OLTFF4 = OLTF*Gc 
CLTFF4 = feedback(OLTFF4,1) 
step(CLTFF4); damp(CLTFF4); 


%%  Question 12  
clear all; close all; clc; 
OLTF = tf([114],[1 11.4 14 0]) 
k1 = 15.78;  k3 = 12.07;  k = k3/k1; 
Gc = tf(k1*[1 k],[1 0]); 
OLTFF1 = OLTF*Gc 
CLTFF1 = feedback(OLTFF1,1) 
step(CLTFF1); damp(CLTFF1); 
OLTF = tf([114],[1 11.4 14 0]) 
k1 = 1.312; 
k2 = 0.377; 
k3 = 1.267; 
K1=k3/k2; 
K2=k1/k2; 
Gc = tf(k2*[1 K2 K1],[1 0]); 
OLTFF2 = OLTF*Gc 
CLTFF2 = feedback(OLTFF2,1) 
step(CLTFF2); damp(CLTFF2); stepinfo(CLTFF2)    

%% +30%  
OLTF=tf([148.2],[1.3 14.82 18.2 0]);  % Open loop TF after 30% Increase 
CLTF=feedback(OLTF,1); 
K1=k3/k2; 
K2=k1/k2; 
Gc = tf(k2*[1 K2 K1],[1 0]); 
OLTFF1 = OLTF*Gc 
CLTFF1 = feedback(OLTFF1,1) 
step(CLTFF1); damp(CLTFF1); 
stepinfo(CLTFF1) 
%% sim results 
figure 
sim("CS_proj_PID_2") 
hold on 
plot(time,vcout, LineWidth=1.4); 
plot(time,input, LineWidth=1.4); 
legend("Step Response","INPUT"); title("Step response"); xlabel("time"); 
ylabel("Amplitude");

%% -30% 
OLTF=tf([79.8],[0.7 7.98 9.8 0])  % Open loop TF after 30% Decrease 
CLTF=feedback(OLTF,1); 
K1=k3/k2; 
K2=k1/k2; 
Gc = tf(k2*[1 K2 K1],[1 0]); 
OLTFF1 = OLTF*Gc; 
CLTFF1 = feedback(OLTFF1,1) 
step(CLTFF1); damp(CLTFF1); 
stepinfo(CLTFF1) 
 
%% sim results 
figure 
sim("CS_proj_PID_2") 
hold on 
plot(time,vcout, LineWidth=1.4); 
plot(time,input, LineWidth=1.4); 
legend("Step Response","INPUT"); title("Step response"); xlabel("time"); 
ylabel("Amplitude");

