function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions  Compute the cost of a particular choice of theta
%               You should set J to the cost.

% h(��) = ��_1 + ��_2*x_i
% h(��) = ��_1*1 + ��_2*x_i
% X = [1,x_1; 1,x_2;???1,x_i]
% theta = [��_1, ��_2]
% h(��) = X * theta
h = X * theta; 
% J(��) = 1/( 2 * m ) * sum(h_��(x_i)-y_i)^2 // .^ means every element power
J = 1/( 2 * m ) * sum((h - y).^2);

% =========================================================================

end
