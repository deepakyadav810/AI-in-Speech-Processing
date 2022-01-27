clear;
fprintf('Experiment 1\n')
fprintf('Part 1 : Generate a 10 Hz sine wave sampled at 1000 Hz sampling frequency and for a duration of 1 sec.\n')
t=0:1/1000:1;
y=sin(2*pi*10*t);
x=[1:1000];
figure;
plot(x,y(1:1000));
xlabel('time (in seconds)');
ylabel('amplitude')
title('Singleton sin wave');

clear;
fprintf('Part 2 : Compute the spectrum. The spectrum will be shown only for half portion, since the magnitude spectrum is symmetric with respect to origin\n')
t=0:1/1000:1;
y=sin(2*pi*10*t);
Y=abs(fft(y,1024));
x=[1:1024]*(1000/1024);
figure;
plot(x(1:512),Y(1:512));
xlabel('frequency');
ylabel('amplitude')
title('Magnitude Spectrum');
fprintf('What is the frequency corresponding to the peak in the spectrum??\n')
fprintf('The peak at 10 Hz frequency corresponding to the peak in the spectrum\n')


clear;
fprintf('Experiment 2\n')
t=0:1/1000:1;
y1=sin(2*pi*10*t);
y2=sin(2*pi*50*t);
y3=sin(2*pi*100*t);
y=y1+y2+y3;
x=[1:1000];
figure;
plot(x,y(1:1000));
xlabel('time(msec)');
ylabel('amplitude')
title('Multistone sin wave');

clear;
fprintf('magnitude spectrum\n');
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
fprintf('Can you find the frequency components by direct measurement in the time domain?')
fprintf('The shape of the signal that is generated is relatively more complicated compared to the single tone case. Hence it becomes difficult to find the frequency components by direct measurement in the time domain.\n')
fprintf('Is the multitone sine wave a stationary signal? Why?')
fprintf('Yes because all the frequency components are present at all instants of time.')


clear;
fprintf('Experiment 3\n')
fprintf('Part I')
t=0:1/1000:1;
y1=sin(2*pi*10*t);
y2=sin(2*pi*50*t);
y3=sin(2*pi*100*t);
z1=y1+y2;
z2=y1+y2+y3;
y=[y1(1:250), z1(251:500), z2(501:750), y1(751:1000)];
x=[1:1000];
figure;
plot(x,y(1:1000));
xlabel('time(msec)');
ylabel('amplitude')
title('Multitone sin wave');

clear;
fprintf('Part II')
fprintf('magnitude spectrum\n');
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