function Bdiff(x)
    h = x(2) - x(1);
    n = length(x);
   back_diff = zeros(1, n-1);
    for i = 2:n-1
       back_diff(i) = (f(x(i)) - f(x(i-1))) / h;
    end
    fprintf('x\t\t\tf''(x) approxf \texact f''(x)\t\terror\n');
    for i = 1:n-1
        true_value = fo(x(i)); 
        error = abs(back_diff(i) - true_value);  
        fprintf('%.1f\t\t\t%.3f\t\t\t%.3f\t\t\t%.3f\n', x(i), back_diff(i), true_value, error);
    end
end


function y = f(x)
    y = log(x);
end


function g = fo(x)
    g = 1./x;
end
