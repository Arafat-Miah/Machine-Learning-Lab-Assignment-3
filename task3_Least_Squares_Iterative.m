% Load the data set from the file 'student_debt_data.csv'
A = load('student_debt_data.csv');

% Build design matrix X and target vector y (same as Task 2)
X = [ones(size(A,1),1) A(:,1)];   % P x 2
y = A(:,2);                       % P x 1
P = size(X,1);

% Construct the cost function (must work for w as a row vector OR as Kx2 matrix)
g = @(w) mean( (X*w' - y).^2 , 1 )';   % returns Kx1 column vector

% Set the step size (very small as the task hints)
ALPHA = 1e-7;

% Set the upper limit of iterations
MAX_ITER = 1000;

% Set the starting point of iteration (far from optimum; ||w0 - wmin|| > 10)
w0 = [0 0];

% Solve the weights using GD with AD
[gw, w, g_history, w_history] = gradientDescentAD( g, w0, ALPHA, MAX_ITER );
