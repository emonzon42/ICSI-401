function [y] = evaluate_lagrange(ptmatrix, x)
% Evaluate the Lagrange form of the interpolating polynomial 
% for the given points at the point x.
% We expect ptmatrix to be an (n+1)x2 matrix, where each
% row is a point.
    [scrap, numpts] = size(ptmatrix);
    y = 0;
    for i = 1:numpts
        y = y + evaluate_p_i(ptmatrix, i, x); 
    end
end

function [y] = evaluate_p_i(ptmatrix, i, x)
% Evaluate the ith term of the Lagrange polynomial 
% at the point x.
    [scrap, numpts] = size(ptmatrix);
    y = ptmatrix(i, 2);
    for j=1:numpts
        if j == i 
            continue;
        end
    y = y * (x - ptmatrix(j, 1)) / (ptmatrix(i, 1) - ptmatrix(j, 1)); 
    end
end
