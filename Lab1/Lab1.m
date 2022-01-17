fprintf('Lab 1 answers\n'); 
fprintf('1a\n'); 
help sqrt
fprintf('1b\n');
x = sqrt(4)
fprintf('1c\n');
Y = sqrt(9)  
fprintf('1d\n');
who
fprintf('1e\n');
whos
fprintf('1f\n');
Z = sin(3.14)
fprintf('1g\n');
whos
fprintf('1h\n');
clc
fprintf('1i\n');
who
fprintf('1j\n');
clear   
fprintf('1k\n');
who
fprintf('ans-Nothing gets printed, as all the stored variables are erased by command "clear"')
fprintf('1l\n');
try
    size(x)
catch
    fprintf('ans-stored variables are erased by command "clear". It will cause error')
end
fprintf('1m\n');
a = [1 2 3]  
b = [3 4 5]    
try
    a*b
catch
    fprintf('It will cause error as two matrix two be multiplied condition in mxn nxo')
end
a.*b  
fprintf('1n\n');
fprintf('1o\n');
C = [a b]  
fprintf('1p\n');
zeros(4)
fprintf('1q\n');
zeros(1, 3)
fprintf('1r\n');
ones(1, 2)
fprintf('1s\n');
P = [zeros(1, 3) 1 1 ones(1, 2)]
fprintf('1t\n');
try
    P = [zeros(3,1) 1 1 ones(1,2)]
catch
    fprintf('ans- Since during horizontal concatenation rows of both matrix should be same. It will cause an error')
end
fprintf('1u\n');
Y = 1 : 0.5 : 5
fprintf('1v\n');
M = [1 2 3
4 5 6
7  8 9 ]
fprintf('%f\n', M);
X = M(1,:)

fprintf('2a(1)\n');
M = [3, 12, 6, 8 ;5, 3, 9, 11;1, 2, 14, 7;10, 5, 3, 6 ]
fprintf('2a(2)\n');
M =[ 3, 12, 6, 8 
5, 3, 9, 11
1, 2, 14, 7
10, 5, 3, 6 ]
fprintf('2a(3)\n');
X = [3, 12, 6, 8 
5, 3, 9, 11 ]
Y = [1, 2, 14, 7
10, 5, 3, 6 ]
M = [X,
Y]
fprintf('2a(4)\n');
M = readmatrix('matrix.txt')
fprintf('2b(1)\n');
M'
fprintf('2b(2)\n');
inv(M)
fprintf('2c\n');
size(M)
fprintf('2d\n');
X = M(2,:)
Y = M(:,3)
fprintf('2e\n');
X*Y
fprintf('2f\n');
X.*Y
fprintf('2g\n');
M(end,:) =  [1 5 9 0]
fprintf('2h\n');
B = M(:)'
B = M(:)''
fprintf('2i\n');
flip(M)
fprintf('2j\n');
D = diag(M)
fprintf('2k\n');
V = diag(D)
fprintf('2l\n');
I = eye(size(V))
fprintf('2m\n');
N = [V I]
fprintf('3\n');
x=[0:.01:1]
size(x)
fprintf('4\n');
x = [1 6 9 2];
y = [2 0 3 8];
sum(x.*[y;y],2)
a*b.'
fprintf('5\n');
who
whos
fprintf('who : lists the variables currently in the workspace.\n');
fprintf('whos : lists the current variables and their sizes and types. It also reports the totals for sizes.\n');
fprintf('6\n');
U=[4 5 6 7];
S = sum(U)
Mean = mean(U)
Median = median(U)

%Extra problem
[y,Fs] = audioread('Moscow.mp3');
%sound(y,Fs);
size('Moscow.mp3');
length(y)
whos y;
whos Fs;
TotalTime = length(y)./Fs;
t = 0:TotalTime/(length(y)):TotalTime-TotalTime/length(y);
plot(t,y)
