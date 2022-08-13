
function y= Check_and_correct9(A,i,j)
%khoi tao bien
if i<=3 x3 = 1;
elseif i<=6; x3 = 4;
else x3 = 7; 
end
if j<=3 x4 = 1;
elseif j<=6 x4 = 4;
else x4 = 7; 
end
x6 = 1;
%tim va sua
while(x6);
x5 = 0;
if A(i,j) == 0
   A(i,j) = 1;
end
for m1 = 1:9
    if A(i,m1) == A(i,j) 
    x5 = x5 +1;
    end
end
for m2 = 1:9
    if A(m2,j) == A(i,j)
    x5 = x5 +1;
    end
end
for m3 = x3 : (x3+2);
    for m4 = x4 : (x4 +2);
        if A(m3,m4) == A(i,j);
            x5 = x5 +  1;
        end
    end
end
if  (x5 == 3)
    x6 =0; 
    y = A(i,j);
else A(i,j) = A(i,j) +1 ; 
end
end