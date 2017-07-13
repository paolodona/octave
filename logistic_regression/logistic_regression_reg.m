clear ; close all; clc %% Initialization

data = load('and.txt');
X = data(:, [1, 2]); y = data(:, 3);

% Add Polynomial Features
X = mapFeature(X(:,1), X(:,2)); % this adds intercept feature as well
initial_theta = zeros(size(X, 2), 1);

lambda = 1; % Set regularization parameter lambda to 1 (you should vary this)

options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, J, exit_flag] = fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);

% Plot Boundary
plotDecisionBoundary(theta, X, y);
hold on;
title(sprintf('lambda = %g', lambda))
xlabel('Feature 1')
ylabel('Feature 2')
legend('y = 1', 'y = 0', 'Decision boundary')
hold off;

% Predict probability
I = [1 1];
prob = predict(theta, mapFeature(I(:,1), I(:,2)));
fprintf(['Input: %d %d - predicted output: %f\n'], I, prob);

% Compute accuracy on our training set
p = predict(theta, X);
fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);
