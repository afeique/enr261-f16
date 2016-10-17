% Filename: Tutorial_02_6
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to demonstrate the different forms of for
% loops in Matlab.

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace

% output title and author to command window
fprintf('Output for Tutorial_02_6 written by Afeique Sheikh.\n\n')

% Using a for loop to sum the inverses of integers from 1 to 1,000,000.
% The tic and toc commands measure the processing time.
tic % starts stopwatch timing
SumN=0; % initialize sum
for N=1:1000000
    SumN=SumN + 1/N; % semicolon to suppress output
end
fprintf('Sum 1/N of N=1 to 1,000,000 using a for loop = %g\n\n', SumN)

toc % stops stopwatch and outputs elapsed time

% Using a vector to sum all the inverse of integers from 1 to 1,000,000.
tic % start stopwatch
n=1:1000000; % vector of integers from 1 to 1 million
sum_n=sum(1./n); % compute sum using vectorized summation function
fprintf('\n\nSum 1/n with n=1 to 1,000,000 using a vector = %g\n\n', sum_n)

toc % stop stopwatch and display elapsed time
clear % clear all variables in the workspace

% Computing the sum of series 1/1 - 1/2 + 1/3 - 1/4 + ...
tic % start stopwatch
SumN = 0;
sign = 1;
for N=1:1000000
    SumN = SumN + sign*(1/N);
    sign = -1*sign;
end
fprintf('\n\nSum (+/- 1)*(1/N)')
fprintf(' with N=1 to 1,000,000 using for loop = %g\n\n', SumN)
toc % stop stopwatch and display elapsed time

% Using a vector to sum 1/1 - 1/2 + 1/3 - 1/4 + ...
tic % start stopwatch
n=1:2:999999; % vector with only odd values from 1 to 999,999
% add 1/n when n odd; subtract 1/n when n even
sum_n = sum(1./n - 1./(n+1));
fprintf('\n\nSum (+/- 1)*(1/N)')
fprintf(' with N=1 to 1,000,000 using for loop = %g\n\n', sum_n)
toc % stop stopwatch and display elapsed time
clear % clear all variables in workspace

% Computing sum of the Taylor series for
% sin(x) = x - x^3/3! + x^5/5! - ...
x=pi/6; % angle in rads

% Using a for loop to compute the Taylor series sum

tic % start timing watch
TaylorSin=0; % initialize Taylor series sum
sign = 1;
% sum first 5000 elements of series
for N=1:2:99999 % odd values from 1 to 99,999
    TaylorSin = TaylorSin + (sign*x^N)/factorial(N);
end
fprintf('\n\nTaylorSin(%g) with 5000 terms using a for loop = ', x)
fprintf('%g\n\n', TaylorSin)
toc % stop timing watch and display elapsed time

% Using vectors to compute the Taylor series sum
tic % start timing stopwatch
n=1:4:99997; % vector with every other odd value (1,5,9,13 ...) to 99,997
% Compute sum of every other (positive) odd term (1,5,9,13 ...) and
% every other (negative) odd term (3,7,11 ...)
TaylorSin = sum( (x.^n)./factorial(n) - (x.^(n+2))./factorial(n+2) );
fprintf('\n\nTaylorSin(%g) with 5000 terms using a vector = ', x)
fprintf('%g\n\n', TaylorSin)
toc % stop timing stopwatch and display elapsed time

% print conclusion
fprintf('\n\nConclusion: ')
fprintf('Vectors are typically faster than for loops.\n\n')
