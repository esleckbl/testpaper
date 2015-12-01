%-----------------------------------------------------
% Program  : func_esleckbl.m
% Author   : Boyd Esleck
% Date     : 12/3/15
% Purpose  : Evaluate every value in the input vector
%            for the function sin(x^2 + 1/3*x) and 
%            output the new vector
%-----------------------------------------------------

% Variables
% in - the input vector (double)
% out - the output vector (double)

function out = func_esleckbl(in)
    out = sin(in.^2 + in/3);
end