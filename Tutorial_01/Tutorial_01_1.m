% Filename: Tutorial_01_1
% Author:   Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate common arithmetic
% operations in Matlab.

% Clear the command window and all variables
clc % clear contents of the command window
clear % clears all defined variables from the Matlab workspace

% The fprintf() function creates formatted output.
% Items inside apostrophes are output exactly as typed.
% The \n escape character advances the output to the next line.

% Output the title and author to the command window.
fprintf('Output for Tutorial_01_1 written by Afeique Sheikh.\n\n')

% The numerical result of arithmetic operations is output in the place
% given by the %g format specifier.

fprintf('2+3 = %g\n\n', 2+3) % addition
fprintf('2-3 = %g\n\n', 2-3) % subtraction
fprintf('2*3 = %g\n\n', 2*3) % multiplication
fprintf('2^3 = %g\n\n', 2^3) % exponentiation
fprintf('1/2 = %g\n\n', 1/2) % right division

% The backslash character (\) is a special format specifier when contained
% inside apostrophes. To override this function, we need to type two
% backslashes consecutively to output a single backslash.

fprintf('1\\2 = %g\n\n', 1\2) % left division (\\ prints a single \)

% Matlab is able to handle division by 0 and infinity (inf)

fprintf('1/0 = %g\n\n', 1/0) % division by zero
fprintf('0/0 = %g\n\n', 0/0) % NaN represents "Not a Number"
fprintf('1/inf = %g\n\n', 1/inf) % divide by infinity
fprintf('0/inf = %g\n\n', 0/inf) % divide by infinity


