%% PROGRAM FOR MULTIPLICATION OF TWO UNSIGNED 4-BIT BINARY NUMBER
clearvars;
 R = [0 0 0 0 0 0 0 0];
 disp ('Enter First Binary Sequence');
     A = zeros(1,8);
 for i= 5 : 8
      A(i)=input(''); 
end
disp ('Enter Second Binary Sequence');
    B = zeros(1,8);
 for i= 5 : 8
 B(i)=input('');
 end
disp('***=========================***');
 fprintf('Multiplicand='); 
fprintf('%d',A);
 fprintf('\n'); 
fprintf('Multiplier=');
 fprintf('%d',B); 
fprintf('\n');
 
%subplot(3,1,1); 
%stem(A,'G');
 %xlabel('Multiplicant');
 if(B(8)==1) % Assign the given number First partial product R=A; 
end
for i=7:-1:5
 if(B(i)==1) 
c=0;
 for j=8:-1:1
 [A(j), c]=adds(A(j),A(j),c); 
end
c=0;
for j=8:-1:1
 [R(j), c]=adds(R(j),A(j),c); 
% shifting left
 end
 else
     c=0;
 for j=8:-1:1 
[A(j), c]=adds(A(j),A(j),c);
 end
end
end
%% Result Plotting fprintf('\n'); 
fprintf('Multiplication result=');
 fprintf('%d',R);
 fprintf('\n');
 %subplot(3,1,2);
 %stem(B,'R'); 
%xlabel('Multiplier');
 %subplot(3,1,3); 
%stem(R);
 %xlabel('Result after multiplication');

 

