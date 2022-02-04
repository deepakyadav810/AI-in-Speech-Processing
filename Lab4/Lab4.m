
fprintf('Experiment I\n')
[y, fs] =audioread('speech.wav'); 
y=y(20001:55000);
y=y./(1.01*abs (max(y)));
x=([1:length(y)]/44100)*1000;
figure;
plot (x,y); 
xlabel('time (msec)')
ylabel('amplitude')
title('Speech signal waveform');
sound(y,fs)

clear;
fprintf('Experiment II\n');
[y, fs] =audioread('speech.wav'); 
y=y(20001:55000);
y=y./(1.01*abs (max(y)));
Y=20*log10(abs(fft(y)));
x=[1:length(Y)].*(44100/length(Y));
figure;
plot (x(1:length(x)/6),y(1:length(Y)/6)); 
xlabel('Frequency (Hz)')
ylabel('Spectral amplitude (dB)')
title('Magnitude Spectrum');


clear;
fprintf('Experiment III\n');
fprintf('Magnitude spectrum of stationary signal\n');
t=0:1/1000:1;
y1=sin(2*pi*10*t);
y2=sin(2*pi*50*t);
y3=sin(2*pi*100*t);
y=y1+y2+y3;
x=[1:1000]*(1000/1024);
Y=abs(fft(y,1024));
figure;
plot(x(1:512),Y(1:512));
xlabel('frequency');
ylabel('amplitude')
title('Magnitude Spectrum');


clear;
fprintf('Magnitude spectrum of non-stationary signal\n');
t=0:1/1000:1;
y1=sin(2*pi*10*t);
y2=sin(2*pi*50*t);
y3=sin(2*pi*100*t);
z1=y1+y2;
z2=y1+y2+y3;
y=[y1(1:250), z1(251:500), z2(501:750), y1(751:1000)];
Y1=abs(fft(y1(1:250),256));
z11=z1(251:500);
z1=abs(fft(z11,256));
z21=z2(501:750);
z2=abs(fft(z21,256));
y11=y1(751:1000);
Y11=abs(fft(y11,256));
x1=[1:256]*(1000/256);
figure;
subplot(2,2,1);plot(x1(1:128),Y1(1:128));
xlabel('frequency');
ylabel('amplitude')
title('Spectrum of 10 Hz component')
subplot(2,2,2);plot(x1(1:128),z1(1:128));
xlabel('frequency');
ylabel('amplitude')
title('Spectrum of 50 Hz component')
subplot(2,2,3);plot(x1(1:128),z2(1:128));
xlabel('frequency');
ylabel('amplitude')
title('Spectrum of 100 Hz component')
subplot(2,2,4);plot(x1(1:128),Y11(1:128));
xlabel('frequency');
ylabel('amplitude')
title('Spectrum of 10 Hz component')
