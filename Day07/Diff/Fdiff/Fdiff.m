function Fdiff(x)
%x=1 1.1 1.2 1.3
    h = x(2) - x(1)%1.1-1=0.1
    n = length(x);%4
    fwd_diff = zeros(1, n-1);%(1,3);0 0 0
    for i = 1:n-1%1 to 3
        fwd_diff(i) = (f(x(i+1)) - f(x(i))) / h;
        %fwd_df(1)=f(x(2)-F(x(1))/h
        %=f(1.1)-f(1)/h
    end
 %fwd_diff=[fwd_diff(1),fwd_diff(2),fwd_diff(3)]
    fprintf('x\t\t\tf''(x) approxf \texact f''(x)\t\terror\n');
    for i = 1:n-1%1:3 
        true_value = fo(x(i));
        
        error = abs(fwd_diff(i) - true_value);  
        
        fprintf('%.1f\t\t\t%.3f\t\t\t%.3f\t\t\t%.3f\n', x(i), fwd_diff(i), true_value, error);
    end
end

function y = f(x)
    y = log(x);
end

% Exact derivative f'(x) = -1/x^2
function g = fo(x)
    g = 1./x;
end
