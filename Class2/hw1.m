A = [1, 1.5, 0; 
     1.5, -1, 1; 
     0, 1, 1];
eigA = eig(A);
disp('特征值：');
disp(eigA);
if all(eigA > 0)
    disp('正定');
elseif all(eigA >= 0)
    disp('半正定');
elseif all(eigA < 0)
    disp('负定');
elseif all(eigA <= 0)
    disp('半负定');
else
    disp('不定');
end