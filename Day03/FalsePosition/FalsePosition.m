%note:-if we need to understand the consept see the algorithm pdf for this

function root=FalsePosition(xl,xu,step,epes)
    n=1;
    er=1;
    xm=xu;%according to our bisection code this is xm=0 so first do xm=xu then check the answer after that change xm=0 and again check the answer if both answers are same according to our bisection code use xm=0

    iter=[];
    xm_values=[];
    errors=[];

    if f(xl)*f(xu)<0
        while(n<=step && er>epes)
            xm_old=xm;

            xm=xu-((f(xu)*(xu-xl))/(f(xu)-f(xl)));%must remember this formula this is FALSEPISITION formula

            if f(xl)*f(xm)<0
                xu=xm;
            else
                xl=xm;
            end

            if xm~=0 && n>1 %we must give both conditions
                er=abs((xm-xm_old)/xm);%in our algorithm this formula is wrong this is the correct one and i wrote the correct formula near to the wrong one which is in our algorithm pdf
            end

            iter(n)=n;
            xm_values(n)=xm;
            errors(n)=er;
            n=n+1;
        end
        root=xm;
        
        figure
        plot(iter,xm_values)
        xlabel('Iteration')
        ylabel('Root Approximation')
        grid on
     else
        disp('There is no root between this interval');
        root=NaN;%if else pert excuit it means there is no root so it show NuN that's why we did this 
    end
end 


%Note:-like bisection we can make small changes if this code is wrong
%changes are same