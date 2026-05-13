function [V]=simpon38(a,b,n)
%a=0
%b=2
%n=4
   h=(b-a)/n; %h=2-0/4=0.5
   
   %i=3*h/8(f(0)+2f(1.5)+3(f(0.5)+f(1))+f(2))
   %i=3h/8(f(x0)+2*f(x3)+3(f(x1)+f(x2))+f(x4))
    sum1=0; %3(f(x1)+f(x2))
    sum2=0; %x3 x6 x9 2*f(x3)
    
    %0-0, 1-0.5, 2-1, 3-1.5 ,4-2
  
   for i = 1:n-1%1:3 ;i=1 ;i=2 ;i=3
    if mod(i, 3) ~= 0   % If i is not divisible by 3 3%3=0
        x = (a + i) * h; %x=(0+1)*0.5=0.5 ;x=0+2)0.5=1
        sum1 = sum1 + 3 * f(x); 
    end
   end
   sum1
  
        for i=3:3:n-1 %3:3:3=3
        x=(a+i)*h; %x=(0+3)*0.5=1.5
        sum2=sum2+2*f(x);
       
        end
        sum2
    sum=f(a)+sum1+sum2+f(b)
    V=(3*h*sum)/8;
end

function y=f(x)
  y=x^2;
end