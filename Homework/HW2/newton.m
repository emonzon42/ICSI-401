function [wk] = newton(F,Fp,w,k)
%NEWTON Summary of this function goes here
%   Parameters:
%       F:  A function whose roots you want to find
%       Fp:  The derivative of F
%       w: An initial point at which F is differentiable
%       k:  A positive integer giving the number of iterations to execute.
    
wk = w - F(w)/Fp(w);
for i = 1:k
    wk = wk - F(wk)/Fp(wk);
    
    if wk == 0
        return
    end
end

end

