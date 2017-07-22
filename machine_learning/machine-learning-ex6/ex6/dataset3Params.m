function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))
%

# prepare all pairs of C/sigma to try
v = [0.01 0.03 0.1 0.3 1 3 ]; # 10 30
[CC, SS] = meshgrid(v,v);
pairs = [ CC(:) SS(:) ];
combinations = size(pairs,1);

# train the model with different combinations of C/sigma and collect prediction_errors
prediction_errors = ones(combinations, 1);
for i=1:combinations
   C = pairs(i,1);
   sigma = pairs(i,2);
   model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
   predictions = svmPredict(model, Xval);
   prediction_errors(i) = mean(double(predictions ~= yval));
   fprintf('#%i Trained with C=%f sigma=%f... => error %f\n', i, C, sigma, prediction_errors(i));
endfor

[min, position] = min(prediction_errors);
C     = pairs(position, 1);
sigma = pairs(position, 2);
fprintf('Picked C=%f sigma=%f error=%f', C, sigma, min);

# keyboard;
# PP = reshape(prediction_errors, length(v), length(v));
# surf(CC, SS, -PP); xlabel ("C"); ylabel ("sigma"); zlabel ("error");

% =========================================================================

end
