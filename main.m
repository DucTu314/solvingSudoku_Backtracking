A = [ 0 0 1 0;
      4 0 0 0;
      0 0 0 2;
      0 3 0 0]
 k = 1; 
K = 0;
for i = 1:4
   for j = 1:4
    if A(i,j)==0
       K = K+1;
    end
   end
end
H = zeros(1,2*K);
for i = 1:4
   for j = 1:4
    if A(i,j)==0
       H(1,k) = i;
       H(1,k+1) = j;      
       k = k + 2;
    end
   end
end
k = 1;
Error = 1;
while(Error)
    A(H(k),H(k+1)) = Check_and_correct(A,H(k),H(k+1));  
    if (A(H(k),H(k+1))==5)  
        A(H(k),H(k+1)) = 0;
        k = k-2;
        A(H(k),H(k+1)) = A(H(k),H(k+1))+1;
    else k = k+2;
    end     
    if k < 2*K  Error = 1;
    else Error = 0; 
    end
end
display(A);