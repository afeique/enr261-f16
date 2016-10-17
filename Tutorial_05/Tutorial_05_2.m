% Filename: Tutorial_05_2
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate how relational and logical
% operators can be used with vectors.

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace

fprintf('Output for Tutorial_05_2 written by Afeique Sheikh.\n\n')

fprintf('Relational operators are applied element-by-element to a vector.\n\n')

x = 1:5;
fprintf('     x = %d %d %d %d %d\n',x)
fprintf('x == 3 = %d %d %d %d %d\n',x==3)
fprintf('x ~= 3 = %d %d %d %d %d\n',x~=3)
fprintf('x  > 3 = %d %d %d %d %d\n',x>3)
fprintf('x  < 3 = %d %d %d %d %d\n',x<3)

fprintf('Relational operators can be applied to vectors of the same length.\n\n')
A = [2 9 4 0 6];
B = [0 9 7 0 5];

fprintf('     A = %d %d %d %d %d\n',A)
fprintf('     B = %d %d %d %d %d\n',B)
fprintf('A == B = %d %d %d %d %d\n',A==B)
fprintf('A ~= B = %d %d %d %d %d\n',A~=B)
fprintf('A  > B = %d %d %d %d %d\n',A>B)
fprintf('A  < B = %d %d %d %d %d\n',A<B)


fprintf('Logical operators can be appluied to vectors of the same length.\n\n')
fprintf('      A = %d %d %d %d %d\n',A)
fprintf('      B = %d %d %d %d %d\n',B)
fprintf('  A & B = %d %d %d %d %d\n',A&B)
fprintf('  A | B = %d %d %d %d %d\n',A|B)
fprintf('     ~B = %d %d %d %d %d\n',~B)
fprintf('xor(A,B)= %d %d %d %d %d\n',xor(A,B))

