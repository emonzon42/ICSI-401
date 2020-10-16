function [xstar] = LeastSquares(A,b)
%Normal equation method for least-squares
M = A'*A;
y = A'*b;
xstar = M\y; %Solution to M * x* = y
end

