function [percent_odd, backward_elements] = analyzerEx_sol
    
    % Generate a 100-by-100 matrix where A(i,j) = i + j;
    A = NaN(100);
    for ii = 1:100
        for jj = 1:100
            A(ii,jj) = ii + jj;
        end
    end
    
    % Calculate the percentage of elements that are odd
    num_pos = sum(rem(A(:), 2) == 1);
    num_elements = numel(A);
    percent_odd = 100*num_pos/num_elements;
    
    % Create an array of elements in backwards order
    backward_elements = sort(A(:), 'descend');
    
