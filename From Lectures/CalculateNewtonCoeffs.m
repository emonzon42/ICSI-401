function [coeffs] = CalculateNewtonCoeffs(ptmatrix)
    %
    % Calculate the Newton coefficients for the given
    % sequence of points.
    %
    % numpts is the number of points, which is the degree 
    % plus 1. It is also the number of coefficients. 
    [numpts, scrap] = size(ptmatrix);
    % coeffs(k) = a_{k-1}. 
    coeffs = [];

    coeffs(1) = ptmatrix(1,2);
    for k=2:numpts
        % Calculate a_{k-1}.
        termj = 1; %coeffs(1);
        denom = ptmatrix(k, 1) - ptmatrix(1, 1); 
        coeffs(k) = ptmatrix(k) - coeffs(1)*termj; 
        for j=2:k-1
            % We will calculate termj, which is
            % (x_{k-1} - x_0)* ... * (x_{k-1} - x_{j-2}).
            termj = termj * (ptmatrix(k,1) - ptmatrix(j-1, 1));
            coeffs(k) = coeffs(k) - coeffs(j) * termj;
            % Calculate the denominator.
            denom = denom * (ptmatrix(k, 1) - ptmatrix(j, 1)); 
        end
        coeffs(k) = coeffs(k) / denom;
    end
end