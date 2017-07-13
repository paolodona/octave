clear ; close all; clc %% Initialization

data = load('xor.txt'); %% Load Data
X = data(:, [1, 2]); y = data(:, 3);

[m, n] = size(X); %  Setup the data matrix appropriately, and add ones for the intercept term
X = [ones(m, 1) X]; % Add intercept term to x and X_test
initial_theta = zeros(n + 1, 1); % Initialize fitting parameters
options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

fprintf('theta: \n');
fprintf(' %f \n', theta);

plotDecisionBoundary(theta, X, y); % Plot Boundary

%  Predict probability
_input = [1 1];
prob = sigmoid([1 _input] * theta);
fprintf(['Input: %d %d - predicted output: %f\n'], _input, prob);

% Compute accuracy on our training set
p = predict(theta, X);

fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);
fprintf('\n');
