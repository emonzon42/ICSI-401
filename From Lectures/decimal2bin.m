function [bitString] = decimal2bin(decimal)
% Given decimal, an integer, output the binary expansion as a string
    output_indices = [];
    k = 0; % Length of output_indices
    
%!doesnt work the way shown in the lecture
   
    while (decimal > 0)
        % Compute the bit indec j
        j = floor(log(decimal)/log(2));
        output_indices(k+1) = j;
        k = k+1;

        %Update decimal
        decimal = decimal - 2^j;
    end
    
    % At this point, output_indices should contain all indices j
    % such that b_j = 1
    bitString = [];
    bitStringRev = '';
    % LOop through the output_indices backwards
    i = 1; % position in the bitstring
    for j=k:-1:1
        while (i < output_indices(j) + 1)
            bitStringRev(i) = '0';
            i = i+1;
        end
        bitStringRev(i) = '1';    
    end
    display(bitStringRev);
    
    % Reverse the bit string
    length = output_indices(1)+1;
    display(length);
    for i=1:length
        bitString(i) = bitStringRev(length-i+1);
    end
    
    bitString;
end

