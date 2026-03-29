a=[21 2 3;4 5 6];
b=[7 8 9;10 11 12];

[m,n]=size(a);
[m1,n1]=size(b);

if m~=m1 || n~=n1
    error("dimensions not match");
end

c=zeros(m,n); 
%0 0 0
%0 0 0

for i=1:m %row loop 1:2 1st time i=1
    for j=1:n %colomn loop 1:3 1st time j=1
        c(i,j)=a(i,j)+b(i,j);
    end
end

disp("addition of a and b");
disp(c)