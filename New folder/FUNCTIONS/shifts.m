% FUNCTION FOR SHIFT OPERATION
function[a,q] = shifts(a,q)
d=[a,q];
c=0;
for i=8:-1:1
[d(i), c]=adds(d(i),d(i),c);
end
for i=1:4
a(i)=d(i);
q(i)=d(i+4);
end
end