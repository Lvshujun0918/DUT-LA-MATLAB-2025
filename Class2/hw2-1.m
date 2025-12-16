clear; clc;
n = 10;
A = rand(n);
A1 = A ./ sum(A, 1);
disp('方法1生成的矩阵：');
disp(A1);

eigvals1 = eig(A1);
[V1, D1] = eig(A1);
eig_abs1 = abs(eigvals1);
[max_eigval1, idx1] = max(eig_abs1);
max_vec1 = V1(:, idx1);

fprintf('最大特征值: %.6f\n', max_eigval1);
fprintf('最大特征值对应特征向量: \n');
disp(max_vec1');