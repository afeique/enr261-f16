% Filename: Program_02_5
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to perform different vectorized
% (element-by-element) operations on two row vectors, a and b, as defined
% by exercise 2.5 on page 53.

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace
format compact % remove extra line feeds

% output title and author to command window
fprintf('Output for Program_02_5 written by Afeique Sheikh.\n\n')

fprintf('Exercise 2.5 on page 53\n\n')

a = [2 -1 5 0]
b = [3 2 -1 4]

disp(' ') % newline
format loose % put extra line-feeds (newlines) back in

fprintf('(a) c = a - b')
a - b

fprintf('(b) c = b + a - 3')
b + a - 3

fprintf('(c) c = 2 * a + a .^ b')
2 * a + a .^ b

fprintf('(d) c = b ./ a')
b ./ a

fprintf('(e) c = b . a\n')
fprintf('This operation produces an error\n\n')
% b . a

fprintf('(f) c = a .^ b')
a .^ b

fprintf('(g) c = 2.^b+a')
2.^b+a

fprintf('(h) c = 2*b/3.*a')
2*b/3.*a

fprintf('(i) c = b*2.*a')
b*2.*a
