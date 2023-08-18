x = input('Enter the 1st signal sequence:');
h = input('Enter the 2nd signal sequence: ');
z=fliplr(h);
a=length(x);
b=length(z);
n=a+b-1;
y=zeros(1,n);
l=1:n;
for i=0:n
 for j=0:n
 if((i-j+1)>0 && (i-j+1)<=b && (j+1)<=a)
 y(i+1)=y(i+1)+x(j+1).*z(i-j+1);
 end
 end
end
b=xcorr(x,h)
disp(y)
subplot(4, 1, 1);
stem(x);
xlabel('n');
ylabel('x[n]');
title('1st Sequence');
subplot(4, 1, 2);
stem(h);
xlabel('n');
ylabel('z[n]');
title('2nd Sequence');
subplot(4, 1, 3);
stem(l,y);
xlabel('n');
ylabel('y[n]');
title('Result');
subplot(4, 1, 4);
stem(b);
xlabel('n');
ylabel('b[n]');
title('Result using built-in function');