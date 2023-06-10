x=[3 1 2 4]
c=input('Enter the Index: ');
disp(c);
b=0;
n=length(x);
y=sym('z');

for i=0:n-1
    if i>=c-1
    b=b+x(i+1)*y^(c-i-1);

    else
    b=b+x(i+1)/y^(i-c+1);
    end
end    

display(b)

z=[];
p=[0]
zplane(z,p)
