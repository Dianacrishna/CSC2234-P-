function[root]=fixedpoint(x0,step,epes)%(initial guess,maximum number of iterations,tolerance (acceptable error)) and [root] for return multiple output but here we return one out put so that is no need but we studyed like this so using this is better
xr=x0;% xr:- current value (starting with x0)
n=1;%iteration counter
er=1;%error (start with 1 so loop runs)

    while (n<=step && er>epes)
        xr_old=xr;
        xr=g(xr_old);%Calculate new value using g(x)

        if xr~=0 %it means xr!=0
            er=abs((xr-xr_old)/xr);
        end

        %under this for error,stp we didnt creat array but even though we didnt creat the array MATLAB automatically
        %creat arrays and add the values so no need to create arrays like error=[];,stp=[];
        
        error(n)=er;%error in each iteration
        stp(n)=n;%step number(iteration number)
        n=n+1; 
        
    end
        plot(stp,error);%plot use for creat a graph 
        root=xr;
        xlabel('stp') %x axis name
        ylabel('error') % y axix name
end 