% Filename: Program_02_7
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to complete exercises 1 and 3 on page 64

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace
% output title and author to command window
fprintf('Output for Program_02_7 written by Afeique Sheikh.\n\n')

fprintf('Exercise 1:\n\n')
tic
SumN = 0;
for N=1:1000
    SumN = SumN+(N^2);
end
fprintf('Sum of N^2 with N=1 to 1,000 using a for-loop =  %i\n\n', SumN)
toc
fprintf('\n\n')

tic
n = 1:1000;
n = n.^2;
sum_n = sum(n);
fprintf('Sum of n^2 with n=1 to 1,000 using a vector =  %i\n\n', sum_n)
toc
fprintf('\n\n')

fprintf('Exercise 3:\n\n')
tic
SumN = 0;
for N=1:2:999
    SumN = SumN + 1/(N^2 * (N+2)^2);
end
fprintf('Sum of 1/(N^2 * (N+2)^2) with odd N=1 to 999 using a for-loop =  %f\n\n', SumN)
toc
fprintf('\n\n')

tic
n = 1:2:999;
n = 1./(n.^2 .* (n+2).^2);
sum_n = sum(n);
fprintf('Sum of 1/(n^2 * (n+2)^2) with odd n=1 to 999 using a vector =  %f\n\n', SumN)
toc
fprintf('\n\n')
