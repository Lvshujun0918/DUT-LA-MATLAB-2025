clear; clc;
format long;
n = 5;
A = randn(n);
B = randn(n);
C = randn(n);
b = randn(n, 1);
disp('=== 生成的矩阵和向量 ===');
disp('矩阵 A:');
disp(A);
disp('矩阵 B:');
disp(B);
disp('矩阵 C:');
disp(C);
disp('向量 b:');
disp(b);
disp(' ');
x_solution = A \ b;
x_inv = inv(A) * b;
disp('=== 解 Ax = b ===');
disp(x_solution);
if det(A) ~= 0
    fprintf('det(A) = %.6f\n', det(A));
    x_cramer = zeros(n, 1);
    for j = 1:n
        Aj = A;
        Aj(:, j) = b;
        det_Aj = det(Aj);
        x_cramer(j) = det_Aj / det(A);
    end
    disp('=== 克莱姆法则计算结果 ===');
    disp('使用克莱姆法则得到的解 x:');
    disp(x_cramer);
    disp('=== 比较结果 ===');
    fprintf('克莱姆法则解与A\\b解的差异范数: %.2e\n', norm(x_cramer - x_solution));
    fprintf('相对误差: %.2e\n\n', norm(x_cramer - x_solution) / norm(x_solution)); 
else
    fprintf('A不可逆，det(A) = %.6e，不能使用克莱姆法则\n', det(A));
end
