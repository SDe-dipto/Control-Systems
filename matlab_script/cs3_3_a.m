clc;clear;close all;

G1=tf([1],[1 11 10])
G2=tf([1 10],[1 21 20])
G3=tf([1 5],[1 13 62 50])

%Bode plot
w=logspace(-1,3,500);
bode(G1,w);grid on;margin(G1);
figure;
bode(G2,w);grid on;margin(G2);
figure;
bode(G3,w);grid on;margin(G3);