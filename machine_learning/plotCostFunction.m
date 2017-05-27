X = [1 2; 1 3; 1 4];
y = [1;2;3];

index = -3:0.1:3;
costs = zeros(size(index));

for i=1:length(index)
  theta = [10; index(i)];
  costs(i) = costFunctionJ(X,y,theta);
end;

plot(index, costs, '-');
