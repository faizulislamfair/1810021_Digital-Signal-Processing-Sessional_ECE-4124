x=input('Enter your sequence:');
h=fliplr(x);
a=length(x);
b=length(h);
n=a+b-1;
y=zeros(1,n);
l=1:n;
for i=0:n
for j=0:n
if((i-j+1)>0 && (i-j+1)<=b && (j+1)<=a)
y(i+1)=y(i+1)+x(j+1).*h(i-j+1);
end
end
end
b=xcorr(x,x)
disp(y)
subplot(4,1,1)
stem(x)
xlabel('n');
ylabel('x[n]');
title('Sequence1');
subplot(4,1,2)
stem(h)
xlabel('n');
ylabel('h[n]');
title('Sequence2');
subplot(4,1,3);
stem(l,y)
xlabel('n');
ylabel('y[n]');
title('Result');
subplot(4,1,4);
stem(b)
xlabel('n');
ylabel('y[n]');
title('Result using built-in function');