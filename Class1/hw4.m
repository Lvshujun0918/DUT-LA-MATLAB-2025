data=readmatrix('fj.xlsx')
A=data(:,1:6)
b=data(:,7)
x1=A\b
x2=(A'*A)\(A'*b)