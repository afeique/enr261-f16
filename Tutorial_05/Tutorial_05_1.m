% Filename: Tutorial_05_1
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to review how relational (>, <, ==, etc.)
% and logical (&, |, ~) operators work. The use of operands other than
% 0 and 1 can be used with logical operators.

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace

fprintf('Output for Tutorial_05_1 written by Afeique Sheikh.\n\n')

fprintf('Relational operators return either 0(false) or 1(true).\n\n')

x=5;
% There is a difference between the integer format specifiers %d and %i
% - %d : int is interpreted as base 10
% - %i : base is determined from integer: if it starts with 0x, base 16.
%        if it starts with 0, base 8.
fprintf('x = %d\n', x)
% The result of the following operations is 0 or 1
fprintf('x > 4  = %d\n', x>4)
fprintf('x < 4  = %d\n', x<4)
fprintf('x == 4 = %d\n', x==4)
fprintf('x == 5 = %d\n', x==5)
fprintf('x ~= 5 = %d\n', x~=5)


fprintf('\n\nLogical operators return either a 0(false) or 1(true).\n')

% AND(&) operator
fprintf('\nBoth operands must be true for an AND(&) to be true.\n')
fprintf('1 & 1 = %d\n',1&1)
fprintf('1 & 0 = %d\n',1&0)
fprintf('0 & 0 = %d\n',0&0)

% OR(|) operator
fprintf('\nEither operand must be true for an OR(|) to be true.\n')
fprintf('1 | 1 = %d\n',1|1)
fprintf('1 | 0 = %d\n',1|0)
fprintf('0 | 0 = %d\n',0|0)

% NOT(~) operator
fprintf('\nThe NOT(~) operator inverts a value.\n')
fprintf('~1 = %d\n',~1)
fprintf('~0 = %d\n',~0)

% operands other than 0 and 1 can be used with logical operators
% 0 is false and any non-zero value is true

fprintf('\n\nValues other than 0 and 1 can be used with logical operators.\n\n')

fprintf('Both operands must be non-zero for an AND(&) to be true.\n')
fprintf(' -5 & 1 = %d\n',-5&1)
fprintf('0.5 & 1 = %d\n',.5&1)
fprintf('  0 & 0 = %d\n',0&0)

fprintf('\nEither operand must be non-zero for an OR(|) to be true.\n')
fprintf('-10 | 3.5 = %d\n',-10|3.5)
fprintf('1.5 | 0   = %d\n',1.5|0)
fprintf('  0 | 0   = %d\n',0|0)

fprintf('\nThe NOT(~) operator inverts a non-zero operand into 0.\n')
fprintf('~7 = %d\n',~7)
fprintf('~0 = %d\n',~0)

