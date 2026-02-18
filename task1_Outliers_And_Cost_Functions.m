% Load the data from 'regression_outliers.csv' using the load function
A = load('regression_outliers.csv');

% Load the weights from 'problem1.mat' using the load function
load('problem1.mat');   % loads w_LS and w_LAD

% Construct the Least Squares cost function
cost_LS = @(w) mean( (w(1) + w(2)*A(1,:) - A(2,:)).^2 );

% Construct the Least Absolute Deviations cost function
cost_LAD = @(w) mean( abs(w(1) + w(2)*A(1,:) - A(2,:)) );

% Compute the LS cost on weights w_LS and w_LAD
cost_LS_wLS  = cost_LS(w_LS);
cost_LS_wLAD = cost_LS(w_LAD);

% Compute the LAD cost on weights w_LS and w_LAD
cost_LAD_wLS  = cost_LAD(w_LS);
cost_LAD_wLAD = cost_LAD(w_LAD);

% Create 100 evenly spaced grid of points between -2 and 2 (inclusive) for model evaluation and plotting. Create a column vector
x = linspace(-2, 2, 100)';

% Evaluate the LS model at x, i.e. use w_LS to calculate output at the points in x. Create a column vector of results
y_LS = w_LS(1) + w_LS(2)*x;

% Evaluate the LAD model at x, i.e. use w_LAD to calculate output at the points in x. Create a column vector of results
y_LAD = w_LAD(1) + w_LAD(2)*x;

% Plot the result
figure
scatter( A(1,:), A(2,:) )
hold on
plot( x, y_LS )
plot( x, y_LAD, '--' )
legend('data','Least Squares','Least Absolute Deviations','Location','NorthWest')
axis([-2 2 -5 12 ])
xlabel('x')
ylabel('y')
