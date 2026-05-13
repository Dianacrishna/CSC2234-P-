function [x]=backward(u,b,n)
x=zeros(n,1);
x(n)=b(n)/u(n,n);
for i=n-1:-1:1
    sum=b(i);
    for j=i+1:n
        sum=sum-u(i,j)*x(j);
    end
    x(i)=sum/u(i,i);
end
end
