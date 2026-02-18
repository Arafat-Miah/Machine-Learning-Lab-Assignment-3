% The main function to do the non-linear fitting
function [theta, cost_history, theta_history] = fitSingleOutputRegression( x, y, theta0, alpha, max_iter )

    % Initialize variables
    % theta0 is 1x4 row vector: [v0 v1 w0 w1]
    % We will minimize the LS cost using gradientDescentAD
    g = @(th) cost(th);

    % Solve the weights using GD with AD
    [~, theta, cost_history, theta_history] = gradientDescentAD( g, theta0, alpha, max_iter );

    % Return the best solution, and the histories
    % (theta, cost_history, theta_history already set)

    % This function computes the least squares cost function
    % NOTE: As a nested function, it can use x and y directly and needs only the parameter vector theta
    function c = cost(theta)
        yhat = model(x, theta);
        c = mean( (yhat - y).^2 );
    end

end % End of function fitSingleOutputRegression


% Local helper functions below

% This function transforms the features x non-linearly using the parameters v
function z = feature_transform( x, v )
    % v = [v0 v1]
    z = sin( v(1) + v(2).*x );
end

% This function applies the model specified by the parameters theta to the data x
function y = model(x, theta)
    % theta = [v0 v1 w0 w1]
    v = theta(1:2);      % internal transform parameters
    w0 = theta(3);
    w1 = theta(4);

    z = feature_transform(x, v);
    y = w0 + w1 .* z;
end
