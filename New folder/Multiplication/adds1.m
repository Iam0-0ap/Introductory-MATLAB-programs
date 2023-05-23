% FUNCTION FOR ADDITION
function[s, c] = adds1(a,b1,c)
s=xor(xor(a,b1),c);
c=ors(and(a,b1),and(xor(a,b1),c));
end