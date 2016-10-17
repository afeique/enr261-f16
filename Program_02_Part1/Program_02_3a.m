% Filename: Program_02_3a
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to calculate monthly payment, total payment,
% and total interest based on a set of total periods (N) and corresponding
% annual interest rates (i)

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace
format bank % format numerics with 2 decimal spaces, rounded

% output title and author to command window
fprintf('Output for Program_02_3a written by Afeique Sheikh.\n\n')

% original loan amount A
A = 20000;

% total number of payments N
% different interest rates are given depending on the total number of
% payments (the total number of periods)
N = 36:12:72;

% interest rates per period r
% annual interest rates i
% (each interest rate corresponds to a total number of payments N)
% start with annual interest rates and divide by 12 to get monthly 
% (per period) interest rates
i = .04:.0025:.0475;
r = i/12;

% monthly payment amount P
% see: http://brownmath.com/bsci/loan.htm
P = (r*A)./(1-((1+r).^(-1*N)));

% total payments T
T = P .* N;

% total interest I
I = T - A;

% 'table' is a function name!
result = [N' 100*i' P' T' I'];

fprintf('Comparison of Loans\n\n')
fprintf('Amount Financed = $%.2f\n\n', A)
fprintf('         Months        Annual      Monthly        Total         Total\n')
fprintf('                     Interest(%%)  Payment($)   Payments($)   Interest($)\n')
fprintf('         ------      -----------  ----------   -----------   -----------\n')
disp(result)



