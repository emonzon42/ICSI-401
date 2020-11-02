function [v, lambda] = PowerMethod2(A,w,v1,k)
    for j=1:k
    % Subtract off the projection of w onto v1. We are 
    % assuming that v1 is already a unit vector.
        w = w - (v1' * w) * v1;
        w = A*w / norm(A*w);
    end
    v = w;
    z = A*w;
    lambda = z(1) / v(1);
end

