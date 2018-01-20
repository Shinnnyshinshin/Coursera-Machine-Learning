function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

h = theta' * X'; % computing hypothesis 
J = sum((h' - y) .^2); % summing square of difference
J = J / (2*m); % taking the average

end


