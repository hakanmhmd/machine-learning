function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

negativeValues = y == 0;
figure
plot(X(:, 1)(~negativeValues), X(:, 2)(~negativeValues), 'k+', 'LineWidth', 2, 
     X(:, 1)(negativeValues), X(:, 2)(negativeValues), 'ko', 'LineWidth', 2)



% =========================================================================



hold off;

end
