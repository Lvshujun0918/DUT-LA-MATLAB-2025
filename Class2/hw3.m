A = randn(5,4);
[Q, R] = qr(A, 0);
disp('正交化后的4个5维向量：');
disp(Q);
disp('Q^T * Q =');
disp(Q' * Q);
