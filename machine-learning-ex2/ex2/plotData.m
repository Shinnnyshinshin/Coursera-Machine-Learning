function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;
pos = find(y==1);
neg = find(y==0);
plot(X(pos,1), X(pos,2), 'k+', 'LineWidth', 2, 'MarkerSize', 5);
plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 5);

ylabel('Exam 2 sfcore'); % Set the yaxis label
xlabel('Exam 1 score'); % Set the xaxis label
axis ([30 100 30 100]);% set axis ranges
xbounds = xlim();
ybounds = ylim();
set(gca, 'xtick', xbounds(1):10:xbounds(2));
set(gca, 'ytick', ybounds(1):10:ybounds(2));

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
% =========================================================================

end
