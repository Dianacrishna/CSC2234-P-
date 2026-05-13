function [V]=trapmgf(a,b,n)
%a=0
%b=2
%n=4
   h=(b-a)/n; %h=2-0/4=0.5
    %i=h/2(f(a)+2*(f(a+h)+f(a+2h)+f(a+3h))+f(b))
    sum=0;
    
    for i=1:n-1%i=1 %i=2 %i=3
        x=(a+i)*h; %(0+1)*0.5=0.5  %(0+2)*0.5=1 1.5
        sum=sum+2*f(x);%0+2*f(0.5)+2*f(1)+2*f(1.5)
       
    end
    sum=f(a)+sum+f(b);
    V=h*(sum/2);
end

function y=f(x)
  y=x^2;
end