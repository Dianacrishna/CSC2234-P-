%NOTE(for our understanding)
%01.epes:-stopping error tolerance(why we give this value because ->if error<= epes then then only accuracy is good so then we can stop our calculation
% based on this value we deside how much maximum error can be there because this value gives maximum error for accurasy if error is less than or equal 
% to this value only we can acept the accuracy )

function root = bisection(xl,xu,step,epes)%(lower value(lower bound),upper value(upper bound),maximum number of iterations,stopping error tolerance)
n=1;%iteration counter
er=1;%error
xm=0;%midpoint

%under we create three empty array
iter =[]; 
xm_values=[];
errors=[];
 
if f(xl)*f(xu)<0
    while(n<=step && er>epes)
        xm_old=xm; 
        xm=(xl+xu)/2;
        if f(xl)*f(xm)<0
            xu=xm;
        else 
            xl=xm;
        end 
 
        if n>1 
            er=abs((xm-xm_old)/xm);
        end

        %carfully see here for storing array values we use () this not []
       
        iter(n)=n;%stors iteration numbers for example iter[1]=1;
        xm_values(n)=xm;%stors root value at each step for example xm_values[1]=2.1;
        errors(n)=er;%stors error at each step for example errors[1]=0.11;
        n=n+1; 
    end
    root=xm;
    %this is for Plot Graph
    figure
    plot(iter,xm_values)
    xlabel('Iteration')
    ylabel('Root Approximation')
    grid on
    
    %This creates a graph:
        % X-axis ->iteration number
        % Y-axis ->root approximation

else
    disp('There is no root in this interval')
end 
end

%------------------------ABOVE CODE IS GIVEN BY MISS BUT IF IT IS NOT WORKING USE THIS CODE--------------------------------------------------------
%Note:-new added lines only marked using commandout

% function root = bisection(xl,xu,step,epes)
% n=1;
% er=1;
% xm=0;
% 
% iter =[]; 
% xm_values=[];
% errors=[];
% 
%  % Check if bounds are roots themselves
%   if f(xl) == 0             %newly added
%       root = xl; return;    %newly added
%   elseif f(xu) == 0         %newly added 
%       root = xu; return;    %newly added
%   end                       %newly added
% 
% if f(xl)*f(xu)<0
%     while(n<=step && er>epes)
%         xm_old=xm; 
%         xm=(xl+xu)/2;
%         if f(xl) * f(xm) < 0
%              xu = xm;
%         elseif f(xl) * f(xm) > 0 %newly added
%              xl = xm;
%         else
%              er = 0;%newly added (This means f(xm) is exactly 0)  
%              break;%newly added
%         end
% 
% 
%         if n>1 && xm~=0 % xm~=0 is newly added
%             er=abs((xm-xm_old)/xm);
%         end
% 
%         iter(n)=n;
%         xm_values(n)=xm;
%         errors(n)=er;
%         n=n+1; 
%     end
%     root=xm;
% 
%     figure
%     plot(iter,xm_values)
%     xlabel('Iteration')
%     ylabel('Root Approximation')
%     grid on
% 
% else
%     disp('There is no root in this interval')
% end 
% end


%Note:- we need to write elseif like not like else if i mean we can give
%space between else and if 