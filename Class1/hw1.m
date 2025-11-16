A=rand(4,4)
B=rand(4,4)
C=rand(4,4)
b=rand(4,1)

disp("1.A+B,A-B")
A+B
A-B

disp("2.A*B+B*A")
A*B+B*A

disp("3.A,B的行列式，逆，秩")
det(A)
inv(A)
rank(A)
det(B)
inv(B)
rank(B)

disp("4.A*B的行列式，逆，秩，并验证det(A*B)=det(A)*det(B)")
det(A*B)
inv(A*B)
rank(A*B)
det(A)*det(B)

disp("5.验证(AB)^T=B^TA^T,(AB)^-1=B^-1A^-1,AB!=BA")
disp("①")
(A*B)'
B'*A'
disp("②")
inv(A*B)
inv(B)*inv(A)
disp("③")
A*B
B*A


disp("6.求矩阵X使得AXB=C")
X=(A\C)/B
