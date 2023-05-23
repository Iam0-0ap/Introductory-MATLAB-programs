%% PROGRAM FOR DIVISION OF TWO 4-BIT BINARY NUMBERS(RESTORING DIVIOSN ALGORTITHM)
clearvars;
disp('Enter the Dividend')
     q = zeros(1,4);
for i=1:4
q(i)=input('');
end
disp('Enter the Divisor')
     b = zeros(1,4);
for i=1:4
b(i)=input('');
end
% main operation start
c=1;
for i=4:-1:1
[nb(i), c]=adds(xor(b(i),1),0,c);
end
a=[0 0 0 0];
for cnt = 1 : 4
[a, q] = shifts(a,q);
c=0;
for i = 4 :-1 : 1
[a(i), c]=adds(a(i),nb(i),c);
end
if (a(1)==0)
    q(4)=1;
else
    q(4)=0;

c=0;
for i=4:-1:1
[a(i), c] = adds(a(i),b(i),c);
end
end
end
fprintf('Quotient='); 
fprintf('%d',q);
 fprintf('\n'); 
fprintf('Remainder=');
 fprintf('%d',a); 
fprintf('\n');



 




