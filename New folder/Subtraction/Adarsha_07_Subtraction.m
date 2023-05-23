%% PROGRAM TO SUBTRACT TWO BINARY NUMBERS
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
    [s(i), c] = adds1(a(i),b1(i),c);
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
        [s(i), car] = adds1(s(i),0,car);
    end
    
    %display('Negative')
    fprintf('-')
    fprintf('%d',s)
else
    %display('Positive')
    fprintf('+')
    fprintf('%d',s)
end




