clc
clear all

t=0:0.1:40
x1=(t>=0 & t<=10);
x2=(t>=10 & t<=15);
x3=(t>=15 & t<=25);
x4=(t>=25 & t<=40);
s1 = 1*x1+0*x2-1*x3+0*x4;
subplot(3,1,1);
plot(t,s1);
title('Signal');

d = input('Enter delay value:');

x5=(t>=0+d & t<=10+d);
x6=(t>=10+d & t<=15+d);
x7=(t>=15+d & t<=25+d);
x8=(t>=25+d & t<=40+d);
s2 = 1*x5+0*x6-1*x7+0*x8;
subplot(3,1,2);
plot(t,s2);
title('Delayed Signal');

s3 = xcorr(s1,s2);
subplot(3,1,3);
plot(s3);
title('Cross-correlation');

max_index= max(s3);


fprintf('Delay = %d\n', d);
fprintf('Max Index = %d\n', max(s3));
