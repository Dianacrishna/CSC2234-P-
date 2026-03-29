A = [1 2 3;
     4 5 6];

B = [7 8 9;
     10 11 12];

[m,n] = size(A);
[m2,n2] = size(B);

if m ~= m2 || n ~= n2
    error('Matrix dimensions do not match for addition');
end

C = zeros(m,n);

for i = 1:m
    for j = 1:n
        C(i,j) = A(i,j) + B(i,j);
    end
end

disp('Result of Matrix Addition:')
disp(C)
