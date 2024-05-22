clc;
clear;
%% señal
%frecuencia muestreo:
Fs = 5000;
%periodo de muestreo:
Ts = 1/Fs;
%muestra:
N = 32768;
%vector tiempo:
%t = (0:N-1).*Ts;
%datos pre-fft
m = importdata('28_jun.csv');
%convertirlo a array para poder hacer fft
%t = table2array(m); 
%graficar la señal junto a fft
%subplot(2,1,1),plot(t,m),title('señal'),xlabel('t(ms)'),ylabel('y(t)'),ylim([-5000 5000]);
%% frecuencia
Y = fft(m);
P1 = 2.*(abs(Y(1:N/2)/N));
%frecuency array
f = Fs.*(0:(N/2)-1)./N;
%grafico FFT
plot(f,P1),title('FFT'),xlim([5 2500]);
%graficar fft junto a señal
%subplot(2,1,2),plot(f,P1),title('FFT'),xlabel('Frecuency (Hz)'),ylabel('A (f)'),xlim([5 8300]),ylim([0 120]);
