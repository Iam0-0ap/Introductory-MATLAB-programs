% PROGRAM TO SUBTRACT TWO BINARY NUMBERS

clearvars;
disp('Enter First Binary Sequence')
  a = zeros(1,4);
for i=1:4   
    a(i)=input('');
end
disp ('Enter Second Binary Sequence')
       b = zeros(1,4);
for i=1:4
       b(i)=input('');
end
           b1 = zeros(1,4);
for i=1:4
    b1(i)=xors(1,b(i));
end
c=1;
for i=4:-1:1
    [s(i), c] = adds(a(i),b1(i),c);
end
fprintf('%d',a)
fprintf('\n')
fprintf('%d',b)
fprintf('(-)\n')
disp(['====================='])
if (c==0)
    for i=1:4
        s(i) = xors(1,s(i));
    end
    car=1;
    for i=4:-1:1
        [s(i), car] = adds(s(i),0,car);
    end
    
    %display('Negative')
    fprintf('-')
    fprintf('%d',s)
else
    
    %display('Positive')
    fprintf('+')
    fprintf('%d',s)
end

% FUCNTION FOR XOR
function [res] = xors(a,b1)
if (a==b1)
    res=0;
else
    res=1;
end
end

% FUNCTION FOR ADDITION
function[s, c] = adds(a,b1,c)
s=xor(xor(a,b1),c);
c=ors(and(a,b1),and(xor(a,b1),c));
end

% FUCNTION FOR OR
function[res] = ors(a,b1)
if a==1 || b1==1
    res=1;
else
    res=0;
end
end

