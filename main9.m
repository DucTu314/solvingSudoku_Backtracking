A = [ 8 0 0 0 0 0 0 0 0;
      0 0 3 6 0 0 0 0 0;
      0 7 0 0 9 0 2 0 0;
      0 5 0 0 0 7 0 0 0;
      0 0 0 0 4 5 7 0 0;
      0 0 0 1 0 0 0 3 0;
      0 0 1 0 0 0 0 6 8;
      0 0 8 5 0 0 0 1 0;
      0 9 0 0 0 0 4 0 0];
k = 1; 
K = 0;
for i = 1:9
   for j = 1:9
    if A(i,j)==0
       K = K+1;
    end
   end
end
%khoi tao ham H
H = zeros(1,2*K);
for i = 1:9
   for j = 1:9
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
    A(H(k),H(k+1)) = Check_and_correct9(A,H(k),H(k+1));  
    if (A(H(k),H(k+1)) == 10 ) 
    A(H(k),H(k+1)) = 0; 
    k= k-2; 
    A(H(k),H(k+1)) = A(H(k),H(k+1)) +1;
    else k = k+2;
    end     
    if k < 2*K  Error = 1;
    else Error = 0; 
    end
end
display(A);