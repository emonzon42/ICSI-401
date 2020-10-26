function [v,lambda] = PowerMethod(A,w,k)

    for j=1:k
        w = (A*w)/ norm(A*w);
    end
    v=w;
    z = A*w;
    lambda = z(1) / v(1); 

end

