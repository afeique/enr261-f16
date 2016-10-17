% Filename: Program_02_1
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to demonstrate when the order of operations in
% Matlab and to enter numbers in scientific notation by completing
% exercises 1 and 2 on page 47.

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace

% output title and author to command window
fprintf('Output for Program_02_1 written by Afeique Sheikh.\n\n')

fprintf('Output for exercise 1 on page 47.\n\n')

fprintf('1 + 2 * 3 = %g\n\n', 1+2*3) % 7, 2*3 executed first
fprintf('4 / 2 * 2 = %g\n\n', 4/2*2) % 4, 4/2 executed first
fprintf('1 + 2 / 4 = %g\n\n', 1+2/4) % 1.5, 2/4 executed first
fprintf('1 + 2 \\ 4 = %g\n\n', 1+2\4) % 3, 2\4=4/2 executed first
fprintf('2 * 2 ^ 3 = %g\n\n', 2*2^3) % 16, 2^3 executed first
fprintf('2 * 3 \\ 3 = %g\n\n', 2*3\3) % .5, 2*3 executed first
fprintf('2 ^ (1 + 2)/3 = %g\n\n', 2^(1+2)/3) % 8/3=2.667, (1+2) then 2^3
fprintf('1/2e-1 = %g\n\n', 1/2e-1) % 5, 2e-1 executed first

fprintf('Output for exercise 2 on page 47.\n\n')

fprintf('(a) 1/(2*3) = %g\n\n', 1/(2*3))
fprintf('(b) 2^(2*3) = %g\n\n', 2^(2*3))
fprintf('(c) 1.5e-4 + 2.5e-2 = %g\n\n', 1.5e-4 + 2.5e-2)
