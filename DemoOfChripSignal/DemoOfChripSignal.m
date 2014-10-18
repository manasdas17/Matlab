%%demo of chirp signal
T=10e-6;      %10的-5次
B=30e6;       %30M
K=B/T;
Fs=2*B;Ts=1/Fs;
N=T/Ts;
t=linspace(-T/2,T/2,N);
St=exp(j*pi*K*t.^2);
subplot(2,1,1)
plot(t*1e6,St);
xlabel('Time in u sec');
title('Real part of chrip signal');
grid on;
axis tight;
subplot(2,1,2)
freq=linspace(-Fs/2,Fs/2,N);
plot(freq*1e-6,fftshift(abs(fft(St))));
xlabel('Frequency in MHz');
title('Magnitude spectrum of chirp signal');
grid on;axis tight;
