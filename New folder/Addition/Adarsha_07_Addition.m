%% PROGRAM TO ADD TWO UNSIGNED BINARY NUMBERS (4- BIT BINARY ADDER)

clearvars;
disp('Enter First Binary Sequence')
    a = zeros(1,4);

for i=1:4
a(i)=input('');
end 
disp('Enter Second Binary Sequence')
     b = zeros(1,4);
for i=1:4
b(i)=input('');
end
carry=0;
for i=4:-1:1
c(i)=xors(xors(a(i),b(i)),carry);
carry=ors(ands(a(i),b(i)),ands(xors(a(i),b(i)),carry));
end
fprintf('%d',a)
fprintf('\n')
fprintf('%d',b)
fprintf('+\n')
disp(['====================='])
fprintf('%d%d',carry,c)
fprintf('\n')






    