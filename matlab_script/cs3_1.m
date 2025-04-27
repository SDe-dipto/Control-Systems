clc;clear;close all;
for p=[15,12,11.5]
    figure;
    num=[1 4/3];
    den=[1 p 0 0];
    G=tf(num,den);
    sys=feedback(G,1);
    rlocus(G);
    k=rlocfind(G)
    legend(strcat('p=',string(p)))
    end

