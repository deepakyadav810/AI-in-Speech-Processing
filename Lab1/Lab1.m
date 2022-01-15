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
