
function y= Check_and_correct(A,i2,j2)
%khoi tao bien
if i2<3; x3 = 1; 
else x3 = 3; 
end
if j2<3; x4 = 1; 
else x4 = 3;
end
x6 = 1;
%tim va sua
while(x6);
x5 = 0;
if A(i2,j2) == 0; 
   A(i2,j2) = 1;
    continue;
end
for m1 = 1:4
    if A(i2,j2) == A(i2,m1)
    x5 = x5 +1;
    end
end
for m2 = 1:4
    if A(i2,j2) == A(m2,j2)
    x5 = x5 +1;
    end
end
for m3 = x3 : (x3+1);
    for m4 = x4 : (x4 +1);
        if A(m3,m4) == A(i2,j2);
            x5 = x5 +  1;
        end
    end
end
if (x5 ==3) x6 =0; y = A(i2,j2);
else A(i2,j2) = A(i2,j2) +1 ; 
end
end