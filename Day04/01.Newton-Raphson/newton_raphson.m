function [root]=newton_raphson(x0,steps,epes)
n=1;
xr=x0;
er=1;

while(er>epes && n<= steps)
    if df(xr)~=0 %deravitive xr value,Checks derivative is NOT zero (important!)
        xr_new=xr-(f(xr)/df(xr));
    end
    if xr_new~=0
        er=abs((xr_new - xr)/xr_new);
    end

    xr=xr_new;
    n=n+1;
    error(n)=er;
    stp(n)=n;
end
plot(stp,error);
root=xr;
xlabel('steps');
ylabel('relative error');
end