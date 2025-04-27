%% Find the least square fit for the system [x+2y=3,3x+2y=5,x+y=2.09]
clc;clear;close all;

m=[2;(2/3);1];
%matrix A
A=[ones(size(m)),m]
%matrix b
b=[3;(5/3);2.09]

%Set up augmented matrix and reduce
M=[A.'*A,A.'*b];
R=rref(M);
disp('row reduced form where the last column is solution');disp(R);
soln=lsqr(A,b)
yhat=soln(1)+soln(2)*m;
plot(m,b,'*',m,yhat,'r');
