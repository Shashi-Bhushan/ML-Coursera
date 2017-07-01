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

% Vector giving position of where y = 1
positivePositions = find(y == 1);
% Vector giving position of where y = 0
negativePositions = find(y == 0);

plot(X(positivePositions, 1), X(positivePositions, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(negativePositions, 1), X(negativePositions, 2), 'ko', 'MarkerFaceColor', 'y', 'LineWidth', 4, 'MarkerSize', 7);



% =========================================================================



hold off;

end
