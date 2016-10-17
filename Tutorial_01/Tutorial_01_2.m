% Filename: Tutorial_01_2
% Author:   Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate how variables are assigned
% in Matlab. A variable that contains a single value is called a scalar.
% A single column or row is called a vector. A table of values is a
% matrix.

% Clear the command window and all variables
clc % clear contents of the command window
clear % clears all defined variables from the Matlab workspace
format compact  % removes blank lines after variable output

% Output the title and author to the command window.
fprintf('Output for Tutorial_01_2 written by Afeique Sheikh.\n\n')

% Variable definitions
scalar = 5 % scalar variable
RowVector = [1 2 3 4 5] % row vector variable
ColumnVector = [6; 7; 8] % column vector variable
Matrix = [1 2 3; 4 5 6; 7 8 9] % matrix variable
name = 'Afeique' % name is a row vector of characters

% The 'whos' function displays the name, dimensions, byte size, and
% data types of all variables defined in the workspace.
fprintf('\nOutput created by the first "whos" command\n\n')
whos

clear % clears all defined variables in the workspace

% The %8.6f format specifier outputs pi with a total field width of 8
% with a precision of 6 decimal places
fprintf('The default value of pi is %8.6f\n\n', pi)

pi = 10; % this command redefines pi in the workspace
         % the semicolon suppresses the output
fprintf('The redefined value of pi is %8.6f\n\n', pi)

% The following 'whos' function will show that only pi is defined in the
% workspace because we previously cleared all the other variables with
% the 'clear' command
fprintf('Output created by the second "whos" command\n\n')
whos

clear pi % this clears the current value of pi and replaces it with
         % the default value
fprintf('The value of pi after executing "clear pi" is %8.6f\n\n', pi)

