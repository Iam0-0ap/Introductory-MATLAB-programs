% FUNCTION FOR ADD OPERATION
function[s, c] = adds(a,b,c)
s=xor(xor(a,b),c);
c=or(and(a,b),and(xor(a,b),c));
end