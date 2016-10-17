% Filename: Tutorial_02_2
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to demonstrate how vectors can be created
% and modified

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace
format compact % removes blank spaces in the output
               % remove the word 'compact' to restore default spacing

% output title and author to command window
fprintf('Output for Tutorial_02_2 written by Afeique Sheikh.\n\n')

% vectors can be created using a list of values inside square brackets []
RowVectorA = [1 2 3 4] % row vector with 4 elements
ColumnVectorA = [2; 4; 6; 8] % semicolon creates a new row

fprintf('\n') % insert blank line
% transpose operator ' (apostrophe) converts row vector to column vector
% and vice versa
ColumnVectorB = [10 20 30 40]' 

RowVectorB = ColumnVectorB'
fprintf('\n') % insert blank line

% vectors can be created from other vectors and constants
RowVectorC = [RowVectorA RowVectorB 0 0]

% a vector can be created using the colon operator
RowVectorD = 0:10:100 % creates vector with 0 as the first element, 100 as
                      % the last element, in increments of 10
RowVectorE = -10:0 % if increment is omitted, defaults to 1
fprintf('\n') % blank line

% the subscript (parentheses) operator can be used to access individual
% elements in a vector
fprintf('RowVectorE(2) = %g\n\n', RowVectorE(2))

% individual elements can be modified
fprintf('After RowVectorE(2) = 0\n', RowVectorE(2))
RowVectorE(2) = 0 % replaces 2nd element with 0

% ranges of elements can be modified simultaneously
fprintf('\nAfter RowVectorE(5:7) = 1\n')
RowVectorE(5:7) = 1

% similarly, ranges of elements can be deleted / made empty
fprintf('\nAfter RowVectorE(5:7) = []\n')
RowVectorE(5:7) = []

fprintf('\nAfter RowVectorE(10) = 5\n')
RowVectorE(10) = 5 % creates a new 10th element and fills it with 5; fills
                   % the new 9th element with 0

fprintf('\nAfter RowVectorE([1 5 10]) = []\n')
RowVectorE([1 5 10]) = [] % deletes the 1st, 5th, and 10th elements

% linspace is used to fill vectors when the starting value, ending value,
% and number of values are known
fprintf('\n')
RowVectorF = linspace(0, 100, 5) % start at 0, end at 100, fill with 5
                                 % equally (linearly) spaced values

