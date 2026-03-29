A = [1 2 3;
     4 5 6];

B = [7 8;
     9 10;
     11 12];

[m,n] = size(A);
[n2,p] = size(B);

if n ~= n2
    error('Matrix dimensions do not match for multiplication');
end

C = zeros(m,p);

for i = 1:m
    for j = 1:p
        for k = 1:n
            C(i,j) = C(i,j) + A(i,k) * B(k,j);
        end
    end
end

disp('Result of Matrix Multiplication:')
disp(C)
