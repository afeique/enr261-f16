% Filename: Tutorial_02_7
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to demonstrate the use of relational and
% logical operators.

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace

% output title and author to command window
fprintf('Output for Tutorial_02_7 written by Afeique Sheikh.\n\n')

% The result of a relational operation is either TRUE (1) or FALSE (0)
fprintf('3 > 3  = %g\n\n', 3 > 2)
fprintf('2 > 3  = %g\n\n', 2 > 3)
fprintf('-4 <= -3  = %g\n\n', -4 <= -3)
fprintf('1 < 1  = %g\n\n', 1 < 1)
fprintf('2 ~= 2  = %g (inequality)\n\n', 2 ~= 2)
fprintf('3 == 3  = %g (equality)\n\n', 3 == 3)

% Example of how Matlab and common math notation give different results
fprintf('Evaluating multiple relational operations\n\n')
fprintf('0 < 0.5  = %g\n\n', 0 < 0.5)
fprintf('0.5 < 1  = %g\n\n', 0.5 < 1)

% In the next example, 0 < 0.5 is executed first, resulting in a value of
% TRUE (1). Then the test of 1 < 1 is executed, resulting in a FALSE (0).
% Note the use of the ellipsis (...) at the end of the line which allows a
% command to be continued on the next line.
fprintf('0 < 0.5 < 1  = %g (FALSE, 0 < 0.5 = 1 is evaluated first, then 1 < 1 = 0)\n\n',...
    0 < 0.5 < 1)

% Logical operators link relational operators with either AND (&), 
% OR (|), NOT (!), or EXCLUSIVE OR (xor()).
% The following example demonstrates how to properly perform the previous
% test.
fprintf('0 < 0.5 & 0.5 < 1  = %g (The & operator solves the problem)\n\n',...
    0 < 0.5 & 0.5 < 1)

% Truth tables for AND (&), OR (|), NOT (~), EXCLUSIVE OR (xor())
A = [0 0 1 1]; B = [0 1 0 1]; % row vectors

% Logical operations on the vectors
AandB=A&B; AnandB=~(A&B); AorB=A|B; AnorB=~(A|B);
AxorB=xor(A,B); AxnorB=~(xor(A,B));

% Put values in a table for display
% The transpose operator (') converts row vectors into column vectors
result = [A' B' AandB' AnandB'  AorB' AnorB' AxorB' AxnorB'];
disp('Truth table for vectors A and B') % table title
disp(' ') % blank line
disp('     A     B   AandB AnandB AorB AnorB AxorB AxnorB') % headings
disp(result)