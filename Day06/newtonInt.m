function[yint2]=newtonInt(x,y,xi)
%x=[1 2 4]
%y=[2 3 10]
%xi=3

    n=length(n);%n=3
    fdd=zeros(n);%zeros(3)
    %0 0 0
    %0 0 0
    %0 0 0
    yint=zeros(n,1);%3 1
    %0
    %0
    %0
    Ea=zeros(n-1,1);%2 1
    %0
    %0
    fdd(:,1)=y(:);
   %x  y   1st                  2nd
    %1 %2  (3-2)/(2-1)=1        (3.5-1)/(4-1)=0.8333
    %2 %3  (10-3)/(4-2)=3.5000   0
    %4 %10 0                     0

%FDD table
for j=2:n %2:3
    for i=1:n+1-j %1:2
        %2(1,1)  0(1,2)  0(1,3)
        %3(2,1)  0(2,2)  0(2,3) 
        %10(3,1) 0(3,2)  0(3,3)
fdd(i,j)=(fdd(i+1,j-1)-fdd(i,j-1))/(x(i+j-1)-x(i))
    end
end

xterm=1
yint(1)=fdd(1,1)%b1

  for order=2:n%2:3
      xterm=xterm*(xi-x(order-1));
      %xterm=(xi-x1)
      yint2=yint(order-1)+fdd(1,order)*xterm;%yint(1)
      %yint2=yint(1)+fdd(1,2)*(xi-x1)
      %yint2=b1+
      %
      Ea(order)=yint2-yint(order-1)
      yint(order)=yint2;

  end
%f2(x)=b1+b2(xi-x1)+b3(xi-x1)(xi-x2)
end