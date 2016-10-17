% Filename: Tutorial_04_2
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate:
% 1. How variables can be loaded into a program from a .mat file
% 2. The use of Matlab's randn() function to create a normal distribution
% 3. Exporting values to an Excel spreadsheet

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
format compact % remove extra blank lines after output



fprintf('Output for Tutorial_04_2 written by Afeique Sheikh.\n\n')

% load workspace variazbles from Tutorial_04_1
file = 'Tutorial_04_1_Workspace.mat'
load file

fprintf('The following variables have been retrieved from %s\n\n', file)
whos

% output variable values
fprintf('        nRows = %3i\n', nRows)
fprintf('        nCols = %3i\n', nCols)
fprintf('   nResistors = %3i\n', nResistors)
fprintf('  OverallMean = %6.2f Ohms\n', OverallMean)
fprintf(' StdResistors = %6.2f Ohms\n', StdResistors)

disp(' ')

% Use the retrieved variables and Matlab's random number gneerator to create
% new resistor values

% Matlab has two random number functions. rand() creates a uniform distribution
% between 0 and 1 with all values having an equal probability of occurring.
% randn() creates a normal distribution with a mean of 0 and standard deviation
% of 1.

% randn(nRows, nCols) creates a matrix with nRows and nCols of values.
% To scale the values to a given mean and standard deviation, use formula:
% mean + stdev*randn(nRows, nCols)

resistors = OverallMean + StdResistors*randn(nRows, nCols)

% since we only created a relatively small number of resistors, the actual
% mean and std. dev. may differ slightly from the given mean and std. dev.
% values used

% compute new sum, mean, and std. dev.
NewSum = sum(sum(resistors, 1));
NewMean = mean(mean(resistors, 1));
deviations = (resistors-newMean).^2;
SumDeviations = sum(sum(deviations, 1));
NewStd = sqrt(SumDeviations/(nResistors-1));

fprintf('\nThe new batch of resistors have the following attributes:\n\n')
fprintf('        nRows = %3i\n', nRows)
fprintf('        nCols = %3i\n', nCols)
fprintf('   nResistors = %3i\n', nResistors)
fprintf('       NewSum = %8.2f Ohms\n', NewSum)
fprintf('      NewMean = %8.2f Ohms\n', NewMean)
fprintf(' StdResistors = %8.2f Ohms\n', StdResistors)
disp(' ')

file = 'Ch04_Data_Sp10.xlsx'
sheet = 'NewResistors'
fprintf('\nThe %3i new resistor values and statistics have been exported to: \n\n', nResistors)
fprintf('%s in the %s sheet\n\n', file, sheet)

xlswrite(file, resistors, sheet, 'A4:E30')
xlswrite(file, nResistors, sheet, 'I4:I4')
xlswrite(file, NewSum, sheet, 'I5:I5')
xlswrite(file, NewMean, sheet, 'I6:I6')
xlswrite(file, NewStd, sheet, 'I7:I7')
