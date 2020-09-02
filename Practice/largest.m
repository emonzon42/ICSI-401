function opt = largest(x,y,comparator)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if(comparator(x,y) == 0)
    opt = y;
else
    opt = x;
end

