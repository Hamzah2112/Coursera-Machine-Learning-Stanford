function [theta, J_history] = gradientDescent(X, y, theta, alpha, iterations)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
% number of training examples
m=length(y)
% Initialize some useful values

J_history = zeros(iterations, 1);

for iter = 1:iterations

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    J = X*theta-y;
    temp1=theta(1)-alpha*(1/m)*sum(J.*X(:,1));
    temp2=theta(2)-alpha*(1/m)*sum(J.*X(:,2));
    theta(1)=temp1;
    theta(2)=temp2;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iterations) = computeCost(X, y, theta);

end

end
