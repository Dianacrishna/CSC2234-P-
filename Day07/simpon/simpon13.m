function [V]=simpon13(a,b,n)
%a=0
%b=2
%n=4
   h=(b-a)/n; %h=2-0/4=0.5
   %a x1 x2 x3 b;0 0.5 1 1.5 2
    sum1=0;%odd sum
    sum2=0;%even sum
    
    %0-0, 1-0.5, 2-1, 3-1.5 ,4-2
    %odd place data points
    for i=1:2:n-1% 1 3  1:2:3 ;1 3
        x=(a+i)*h;%0.5 1.5    (0+3)*0.5=1.5
        sum1=sum1+4*f(x);%4*f(0.5)+4*f(1.5)
    end
   %even place data points
        for i=2:2:n-1% 2  2:2:3 
        x=(a+i)*h;%(0+2)*0.5=1 
        sum2=sum2+2*f(x);%2*f(1)
       
    end
    sum=f(a)+sum1+sum2+f(b);
    V=h*(sum/3);
end

function y=f(x)
  y=x^2;
end