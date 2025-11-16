A=rand(4,4)
B=rand(4,4)
C=rand(4,4)
D=rand(4,4)

disp("①")
det([A,B;C,D])
det(A)*det(D)-det(B)*det(C)

a1=rand(1,4)
%去除0，确保可逆
a1(a1 == 0) = 0.1;
A=diag(a1)
c1=rand(1,4)
C=diag(c1)

disp("②")
det([A,B;C,D])
det(A*D-C*B)