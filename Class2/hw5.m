n = 1000;
A = spdiags([-ones(n,1) 2*ones(n,1) -ones(n,1)], -1:1, n, n);
[V, D] = eigs(A, 3, 'SM');
disp('最小的3个特征值：');
disp(diag(D));
