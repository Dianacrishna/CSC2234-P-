function Cdiff(x)
  
    h = x(2) - x(1);
    n = length(x);
    for i = 2:n-1
       Cdiff(i) = (f(x(i+1)) - f(x(i-1))) / (2*h);
    end
    fprintf('x\t\t\tf''(x) approxf \texact f''(x)\t\terror\n');
    for i = 1:n-1
        true_value = fo(x(i)); 
        error = abs(Cdiff(i) - true_value);  
        fprintf('%.1f\t\t\t%.3f\t\t\t%.3f\t\t\t%.3f\n', x(i), Cdiff(i), true_value, error);
    end
end

function y = f(x)
    y = log(x);
end

% Exact derivative f'(x) = -1/x^2
function g = fo(x)
    g = 1./x;
end
