function [y] = EvalNewton(ptmatrix, coeffs, x)
    %
    % Evaluate the Newton polynomial with the given point matrix
    % an coefficients at the point x.
    % Use Horner’s rule. %
    [scrap, numcoeffs] = size(coeffs);
    [numpts, scrap] = size(ptmatrix);
    if numcoeffs == 1
        y = coeffs(1);
        return; 
    end

    subpoly = EvalNewton(ptmatrix(2:numpts, :), coeffs(2:numcoeffs), x);
    y = coeffs(1) + subpoly * (x - ptmatrix(1, 1)); 
end