%% B. Frequency sampling technique

clc;clear;close all;

wc=pi/2;
M=17;

%Desired frequency response
w=0:(pi/256):pi;
Hd_w =([w<=pi/2]).* exp(-i*w*(M-1)/2);
figure;
subplot(3,1,1);
plot(w,abs(Hd_w));
title('Magnitude response of desired filter');
xlabel('w');
ylabel('|Hd(w)|');

kc = floor(wc*(M/(2*pi)));
k=0:(M-1)/2;

Hk = ([k<=kc]).* exp(-i*(2*pi*k/M)*((M-1)/2))
subplot(3,1,2);
stem(k,abs(Hk));
title('Sampled Magnitude response Hd_w');
xlabel('k');
ylabel('|H(k)|');

% Taking idft of H(k) to find h(n)
for n=0:(M-1)
 sumHk=0;
 for k=1:(M-1)/2
 sumHk = sumHk+real(Hk(k+1)*exp(i*2*pi*k*n/M));
 end

 hn(n+1)=(1/M)*(Hk(1)+2*sumHk);
end

n=0:(M-1);
subplot(3,1,3);
stem(n,hn);
title('Impulse response h(n) of filter')
xlabel('n');
ylabel('hn');

[H,f]=freqz(hn,1,1000);
H_mag=20*log10(abs(H));
figure;
plot(f,H_mag);
xlabel('Normalized frequency');
ylabel('Magnitude');
disp('FIR Filter coeff hn');
disp(hn);