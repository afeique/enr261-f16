% Filename: Tutorial_01_3
% Author:   Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate the power of Matlab in
% performing vector and matrix operations.

% Clear the command window and all variables
clc % clear contents of the command window
clear % clears all defined variables from the Matlab workspace
format compact  % removes blank lines after variable output
                % to revert back to the default, simply remove
                % the word 'compact' and rerun

% Output the title and author to the command window.
fprintf('Output for Tutorial_01_3 written by Afeique Sheikh.\n\n')

RowVector = [1 2 3 4 5] % row vector variable

% The old way of finding the average of a row vector using a for loop
SumRow = 0; % initializes the row sum to 0, semicolon suppresses output
ncol = length(RowVector) % length() returns the number of elements

% It is much better to compute the number of elements instead of simply
% counting the number of elements manually and using the constant 5
% instead of ncol. By using ncol, the program will still work correctly
% even if the size of RowVector changes.

for col=1:1:ncol % repeats the loop starting with col=1, increments col
                 % by 1, ends with col=ncol
    SumRow = SumRow + RowVector(col); % adds vector element to sum
end

OldRowAverage = SumRow/ncol % compute the average

% The two modern ways of finding the average using built-in functions
ModernRowAverage1 = sum(RowVector)/ncol
ModernRowAverage2 = mean(RowVector)

fprintf('\n') % blank line
MatrixA = [1 2 3 4; 5 6 7 8; 9 10 11 12] % matrix variable

% The old way of squaring each element of a matrix
% The size() function returns the number of rows and cols in MatrixA
% as a vector
MatrixSize = size(MatrixA); % semicolon suppresses output
nrows = MatrixSize(1)
ncols = MatrixSize(2)

for col=1:1:ncols % loop through each column in MatrixA
    for row=1:1:nrows % loop through each row
        MatrixOld(row,col) = MatrixA(row,col)^2; % square element
    end
end

% output the squared matrix
MatrixOld

% The modern way of squaring each element in a matrix.
% The . operator is used to denot that the operation applies to each
% matrix element individually instead of multiplying the matrix by 
% itself (MatrixA * MatrixA)
% The . operator is referred to as the element-by-element operator.
MatrixModern = MatrixA .^ 2

