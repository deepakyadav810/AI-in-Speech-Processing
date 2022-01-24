clear;
fprintf('Experiment 1\n')
fprintf('Part I\n')
%%Time specifications:
Fs = 100;         % samples per second
dt = 1/Fs;         % seconds per sample
StopTime = 1;   % seconds
t = (0:dt:StopTime-dt)';     % seconds
%%Sine wave:
Fc = 5;                     % hertz
x = sin(2*pi*Fc*t);
% Plot the signal versus time:
figure;
plot(t,x);
xlabel('time (in seconds)');
title('Signal versus Time');



clear;
fprintf('Part II\n')
%%Time specifications:
Fs = 1000;         % samples per second
dt = 1/Fs;         % seconds per sample
StopTime = 1;   % seconds
t = (0:dt:StopTime-dt)'; % seconds  
x = cos(180*pi*t);
% Plot the signal versus time:
figure;
plot(t,x);
xlabel('time (in seconds)');
title('Sampled Signal');


clear all
fprintf('Experiment 2\n')
[y,Fs] = audioread('/MATLAB Drive/AI Speech(21AIE315)/Lab1/Moscow.mp3');
size('Moscow.mp3');
length(y)
TotalTime = length(y)./Fs;
t = 0:TotalTime/(length(y)):TotalTime-TotalTime/length(y);
figure;
plot(t,y)


fprintf('Experiment 3\n')
pause(10)
sound(y,Fs)


fprintf('Experiment 4\n')
audiowrite('recorded.wav',y,Fs)


fprintf('Experiment 5\n')
yRange = [-0.7,0.7];
soundsc(y,yRange);%makes the sound slow as well as play it for long

nBits = 16;
soundsc(y,Fs,nBits);%song played with more depth

soundsc(y, 2*Fs);%plays with twice the rate of normal recorded song

sound(flipud(y),Fs);%reversed the sound


