function [theta_, J_history_] = gradientDescent(X, y, theta_, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history_ = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

	h_ = (X * theta_ - y)';
	% multiply t with x(i)j before summation
    % h is a number
	% what i need to do with this number is theta(zero) := theta(zero) - X[row][zero]
	
	theta_ = diag(theta_ - (alpha/m) * h  * X);
	
	% disp("iter : " + iter);
	% pause;




    % ============================================================

    % Save the cost J in every iteration    
    J_history_(iter) = computeCost(X, y, theta_);

end
 %disp(J_history);
end

