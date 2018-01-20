function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta)
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));


hypothesis = sigmoid(X*theta); % this is a mx1 column vector J
J = ((-1/m) * sum( y .* log(hypothesis) + (1-y) .* log( 1 - hypothesis ))) + ((lambda/(2*m)) * sum( theta(2:end,1) .^ 2 ));




% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta



grad_1_temp = 0
for i = 1:m

  grad_1_temp = grad_1_temp +  ( hypothesis(i) - y(i) ) * X(i, 1);
  
 
end
grad_1_temp = (1/m) * grad_1_temp;
grad(1) = grad_1_temp;



for j = 2:n
  
  grad_j_temp = 0
  
  for i = 1:m
    
    grad_j_temp = grad_j_temp +  ( hypothesis(i) - y(i) ) * X(i, j); 
  end
  
  
  grad_j_temp = (1/m) * grad_j_temp;
  grad_j_temp = grad_j_temp + (lambda / m ) .* theta(j);;
  
  grad(j) = grad_j_temp;
   
end
end
