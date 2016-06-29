function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

myPredictions = X * theta; % (97,2) x (2x1) -> (97,1)
squaredErrors = (myPredictions - y).^2; %the square error between my predictions and the actual values
J = 1/(2*m) * sum(squaredErrors); %the cost



% =========================================================================

end
