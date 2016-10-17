% Filename: Tutorial_02_5
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to demonstrate the different forms of for
% loops in Matlab.

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace
format compact % compact (single) line spacing

% output title and author to command window
fprintf('Output for Tutorial_02_5 written by Afeique Sheikh.\n\n')

% in the fprintf below, note that %, ', and \ have to be repeated twice to
% be printed and not interpreted
fprintf('for i=0:2:6,\n\tfprintf(''i = %%i\\n'', i)\nend\n')

% for loop starts with i=0, increments i by 2 each iteration, and ends
% after the iteration where i = 6 (comma is optional)
for i=0:2:6,
    fprintf('i = %i\n', i) % %i is integer format specifier
end

% if increment value is omitted, it is equal to 1
% note that no comma is used
fprintf('\nfor i=0:6\n\tfprintf(''i = %%i\\n'', i)\nend\n')
for i=0:6
    fprintf('i = %i\n', i)
end

% after i iterates over the end value 6, the loop ends
fprintf('\nfor i=1:2:6\n\tfprintf(''i = %%i\\n'', i)\nend\n')
for i=1:2:6
    fprintf('i = %i\n', i)
end

% start, increment, and end values can be constants, variables or
% expressions
fprintf('\nfor i=start:(final-start)/2:final\n\tfprintf(''i = %%i\\n'', i)\nend\n')
start=-10; final=-20;
fprintf('\nstart=%i, final=%i\n', start, final)
disp(' ') % newline
for i=start:(final-start)/2:final
    fprintf('i = %i\n', i)
end

% using a for loop to compute factorials
fprintf('\nFactorials from 1 to 5\n')
nfactorial=1;
for n=1:1:5
    nfactorial=nfactorial*n;
    fprintf('%i! = %i\n', n, nfactorial)
end

% for loops can be nested inside each other. In this case, for each value
% of the outer loop, the inner loop cycles through its values.
fprintf('\nNested for loops\n')
for OuterLoop=1:1:3
    fprintf('\n') % blank line
    for InnerLoop=10:10:40
        fprintf('OuterLoop=%i, InnerLoop=%i\n', OuterLoop, InnerLoop)
    end
end

