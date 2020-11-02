 function [y] = horner(coeffs, x)
    %
    % Evaluate a polynomial with the given coefficients 
    % at the point x.
    %
    [scrap, num_coeffs] = size(coeffs);
    % Base case: length of coeffs is just 1. 
    if (num_coeffs == 1)
        y = coeffs(1);
        return; 
    end
    % Recursive step.
    y = coeffs(1) + x * horner(coeffs(2:num_coeffs, x)); 
 end