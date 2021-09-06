data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

mu = mean(X);
sigma = std(X);
% for i = 1:m
%     X_norm(i,1) = (X(i,1) - mu(1,1))/sigma(1);
%     X_norm(i,2) = (X(i,2) - mu(1,2))/sigma(2);
% end
X_norm = (X - mu)./sigma;

