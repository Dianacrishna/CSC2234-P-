A=[1 2 3;4 5 6];
B=[7 8 9;10 11 12];
[m,n]=size(A);
[m1,n1]=size(B);
if m~=m1 || n~=n1
    error("matrix dimention do not match for addition");
end

C=zeros(m,n);
for i=1:m
    for j=1:n
        C(i,j)=A(i,j)+B(i,j);
    end
end

disp("RESULT IS MATRIX ADDITION");
disp(C);
