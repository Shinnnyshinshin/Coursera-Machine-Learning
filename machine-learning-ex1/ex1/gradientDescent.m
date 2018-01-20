function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values




%data = load('ex1data1.txt');
%X = data(:, 1); y = data(:, 2);
%m = length(y); % number of training examples


%X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
%theta = zeros(2, 1); % initialize fitting parameters
% Some gradient descent settings
%iterations = 1500;
%alpha = 0.01;
% compute and display initial cost
%computeCost(X, y, theta)
% run gradient descent




% ======================= Part 2: Plotting =======================
%data = load('ex1data1.txt');
%X = data(:, 1); y = data(:, 2);
%m = length(y); % number of training examples
%X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
%theta = zeros(2, 1); % initialize fitting parameters
% Some gradient descent settings
%iterations = 1500;
%alpha = 0.01;
%num_iters = 1500;

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    h = theta' * X'; 
    
    temp1 = theta(1) - alpha * (sum( h' - y ) / m );
    temp2 = theta(2) - alpha * (sum( (h' - y) .* X(:,2) ) / m);
    
    theta(1) = temp1;
    theta(2) = temp2;
    
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

    
end
end


