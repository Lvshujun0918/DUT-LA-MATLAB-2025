A = [83 86 50 88 3 4;
     1  2  3  4  4 3;
     12 15 22 17 5 7;
     28 63 83 60 8 0];
[R, pivot] = rref(A);
disp('行最简形 R =');
disp(R)
disp('主列（极大无关组所在列号） =');
disp(pivot)
B = A(:, pivot);
disp('极大无关组向量：')
disp(B)
all_cols = 1:size(A,2);
free_cols = setdiff(all_cols, pivot);
disp('非极大无关组列号 =');
disp(free_cols)
for k = free_cols
    c = B \ A(:,k);
    fprintf('第 %d 列的线性表示系数为：\n', k);
    disp(c)
end
