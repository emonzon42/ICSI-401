function [wk] = newton(F,Fp,w,k)
%NEWTON Summary of this function goes here
%   Parameters:
%       F:  A function whose roots you want to find
%       Fp:  The derivative of F
%       w: An initial point at which F is differentiable
%       k:  A positive integer giving the number of iterations to execute.

if Fp(w) == 0 %To prevent a divide-by-zero  error
    wk = NaN;
    return
end

wk = w - F(w)/Fp(w);
for i = 1:k
    x = wk - F(wk)/Fp(wk);
    
    if Fp(x) == 0 || Fp(x) == Inf || isnan(Fp(x))
        return
    end
    
    wk = x;
end

end

