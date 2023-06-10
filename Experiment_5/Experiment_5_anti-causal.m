x=[3 1 2 4]
b=0;
n=length(x);
y=sym('z');
for i=1:n
 b=b+x(i)*y^(i-1);
end
display(b)
z=[];
p=[]
zplane(z,p)