function [z] = bisectsearch(F,a,b,delta)
%BISECTSEARCH Summary of this function goes here
%Parameters:
%   F:  a continious function, whos roots you want to find
%   a:  A floating point number giving the left endpoint of 
%       the initial interval in which youwant to search for 
%       a root of F.
%   b:  A floating point number giving the right endpoint of the initial 
%       interval.
%   delta:  A  non-negative  floating  point  number  giving  the  
%       acceptable  proximity  of  the output to a root of F

if F(a) == 0
    z = a;
    return
elseif F(b) == 0
    z = b;
    return
elseif F(a) < 0 && 0 < F(b)
    inc = 1;
elseif F(a) > 0 && 0 > F(b)
    inc = 0;
else
    z = NaN;
    return
end
    
z = (a+b)/2;


while ~(0-delta <= F(z) && F(z) <= 0+delta)
    if(F(z) == 0)
        return
    end
    
    
    if inc == 1
        if F(z) < 0
            a = z;
        else
            b = z;
        end
    else
        if F(z) < 0
            b = z;
        else
            a = z;
        end
    end
    
    z = (a+b)/2;
    
end

end

