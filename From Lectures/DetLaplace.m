function [d] = DetLaplace(A)
    [n,m] = size(A);
    
    % Assume n == m
    
    d = 0;
    
    if (n==1)
        d = A(1,1);
        return
    end
    
    for j=1:n
        % Compute (1,j) minor of A
        minor = A(2:n, [1:j-1, j+1:n]);
        d = d+ A(1,j) * (-1)^(j-1)  * DetLaplace(minor);
    end
end

