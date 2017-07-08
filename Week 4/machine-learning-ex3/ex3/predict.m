function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% size of X (5000 400)
layer0 = [ones(m,1) X];

% size(a1)      -> 5000 401
% size(theta1)  -> 25 401
% size(theta2)  -> 10 26 

% Take X row by row
for a = 1:size(layer0,1)
  % Choose one row from a1
  a1 = layer0(a, :);
  
  % Sets the first layer as [25 1] of 1's
  layer1 = ones(size(Theta1, 1), 1);
  
  % Formulae for Layer 1 is g(Theta1 * a1)
  % layer 1 is of size 25 1
  layer1 = sigmoid(Theta1 * a1');
  
  % For Computation with the second row, need to ass a +1
  % now size is 26 1
  layer1 = [1; layer1];
  
  % g(Theta2 * a2)
  layer2 = sigmoid(Theta2 * layer1);
  
  % Select the maximum (probability) of the 10 classes
  % Size of layer2 is [10 1]
  [x y] = max(layer2);
  
  % Assign this probability to p array
  p(a,1) = y;
  
end

% =========================================================================


end
