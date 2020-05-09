function [p] = array2struct(array,names)
    % turn a vector into a structure
    % names should be a cell array with strings naming the elements of the array

    p = struct(); % init

    for i = 1:length(names),
    	p = setfield(p,names{i},array(i)); 
    end

end