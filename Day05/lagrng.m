function[sum]=lagrng(x,y,x0)

n=length(x);%=2(Finds how many data points you have it means in this array [1 4] we have two elements) and also x,y have same length always
%x=[1 4]
%y=[3 15]
%x0=2
sum=0;
for i=1:n
    product=y(i);
    for j=1:n
        if i~=j
            product=product*(x0-x(j))/(x(i)-x(j));
        end
    end
    sum=sum+product;
end
end
