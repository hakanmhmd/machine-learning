function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


myPredictions = sigmoid(X * theta);
errors = y.*log(myPredictions) + (1-y).*log(1-myPredictions);
cost = (-1.0/m) * sum(errors); %the cost

reg_term = (lambda/(2.0*m)) * sum(theta(2:end).^2); %regularization to logistic regression applied
J = cost + reg_term;

grad = (1.0/m) * (X' * (myPredictions - y));
temp = theta;
temp(1) = 0;

grad = grad + (lambda/m)*temp; %regularized gradient

% =============================================================

grad = grad(:);

end
