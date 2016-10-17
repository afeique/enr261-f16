% Filename: Tutorial_02_1
% Author:   Afeique Sheikh

% Program Description:
% Demonstrate proper nomenclature for Matlab variables and show the
% difference between square braces [] and parentheses ()

clc % clear contents of the command window
clear % clears all defined variables from the Matlab workspace
format compact  % removes blank spaces in output
                % remove 'compact' and rerun to return to defaults

% output of the title and author to the command window
fprintf('Output for Tutorial_02_1 written by Afeique Sheikh.\n\n')

% Variable definitions
% Matlab variable and file names must:
% - begin with a letter
% - contain only: letters, numbers, underscores
%
% For improved readability, multi-word variable names should have the
% first letter of each word capitalized.

% Matlab variables are case-sensitive
A = [1 2 3] % row vector
a = 10 % 'a' is a scalar and different than A

PayDay_2 = 'Thursday' % row vector of characters

g = 9.81 % acceleration due to gravity in m/s^2
         % descriptions of units should be given where applicable

fprintf('\nOutput from the "whos" command.\n\n')
whos % 'whos' outputs information about variables defined in the Workspace
     % to the command window. This includes: vector size (rows x columns),
     % byte size, and data type information

% square braces are used to enclose a list/vector
grades = [68 87 90]

% values in the list may be separated by spaces or commas
heights = [58, 62, 70]

% parentheses are used to denote subscripts of a vector OR
% function arguments, as in fprintf() and sin()

% 1st element in grades
fprintf('grades(1) = %g\n\n', grades(1))

% 3rd element in heights
fprintf('heights(3) = %g\n\n', heights(3))

% sine of 30 degrees
fprintf('sind(30) = %g\n\n', sind(30))

% sine of pi/6 radians
fprintf('sin(pi/6) = %g\n\n', sin(pi/6))

