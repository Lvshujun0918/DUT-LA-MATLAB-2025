A2 = rand(n)';
A2 = A2 ./ sum(A2, 2);
A2 = A2';
disp('方法2生成的矩阵：');
disp(A2);

eigvals2 = eig(A2);
[V2, D2] = eig(A2);
eig_abs2 = abs(eigvals2);
[max_eigval2, idx2] = max(eig_abs2);
max_vec2 = V2(:, idx2);

fprintf('最大特征值: %.6f\n', max_eigval2);
fprintf('最大特征值对应特征向量: \n');
disp(max_vec2');