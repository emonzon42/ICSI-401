function [V] = vandermonde(x,degree)
%helper function to create a vandermonde matrix for me (im too lazY)
    for i=1:size(x)
        for j=0:degree
            V(i,j+1) = x(i).^j;
        end
    end
end

