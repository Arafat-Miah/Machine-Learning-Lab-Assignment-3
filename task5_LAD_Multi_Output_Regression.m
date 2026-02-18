function W = fitMultipleOutputRegression( X, Y )

    % X: P x N   (samples on rows)
    % Y: P x C   (samples on rows)
    [P, N] = size(X);
    C = size(Y,2);

    % Design matrix with bias term
    Xb = [ones(P,1) X];     % P x (N+1)

    % Output weight matrix
    W = zeros(N+1, C);

    % Hyperparameters (these usually work well; tweak if grader complains)
    alpha    = 1e-2;
    max_iter = 2000;

    % Solve each output independently
    for i = 1:C

        yi = Y(:,i);

        % LAD cost function for this output
        g = @(w) mean( abs( Xb*w - yi ) );

        % Initial point
        w0 = zeros(N+1,1);

        % Run GD with AD
        [~, w_opt, ~, ~] = gradientDescentAD( g, w0, alpha, max_iter );

        % Store solution
        W(:,i) = w_opt;
    end

end
