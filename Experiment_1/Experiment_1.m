x = [ 1 2 3 4]; 

h = [ 4 4 3 2]; 


m=length(x); 
l=length(h); 
X=[x,zeros(1,l)]; 
H=[h,zeros(1,m)]; 


z=[]; 
for i=1:m 
      g=h.*x(i); 
      z=[z;g]; 
end 


[r c] = size(z); 
k = r+c; 
t =2; 
Y =[]; 
cd =0; 


while(t<=k) 
         for i=1:r 
               for j=1:c 
                    if((i+j)==t) 
                          cd = cd+ z(i,j); 
                    end 
                end 
           end 
           t = t+1; 
          Y = [Y cd]; 
           cd =0; 
end 

subplot(3,1,1); 
stem(x); 
xlabel('n'); 
ylabel('x'); 
title('1st Signal'); 
subplot(3,1,2); 
stem(h); 
xlabel('n'); 
ylabel('h'); 
title('2nd Signal'); 


subplot(3,1,3); 
stem(Y); 
xlabel('n'); 
ylabel('Y'); 
title('Convoluted Signal');

