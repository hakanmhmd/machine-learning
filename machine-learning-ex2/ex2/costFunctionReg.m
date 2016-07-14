function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
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

reg_sum = 0;
for i=2:size(theta)
  reg_sum = reg_sum + theta(i).^2;
end

reg_term = (lambda/(2.0*m)) * reg_sum; %regularization to logistic regression applied

J = cost + reg_term;

grad(1) = (1.0/m) * sum((myPredictions - y).*X(:, 1));
for i=2:size(theta)
  grad(i) = (1.0/m) * sum((myPredictions - y).*X(:, i)) + (lambda/m)*theta(i);
end


% =============================================================

end
