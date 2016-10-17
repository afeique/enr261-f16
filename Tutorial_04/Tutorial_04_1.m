% Filename: Tutorial_04_1
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate:
% 1. How data can be read from and written to an Excel file.
% 2. How to compute the mean and standard deviation of a matrix.
% 3. How to save workspace variables to a Matlab .mat file.

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
format compact % remove extra blank lines after output



fprintf('Output for Tutorial_04_1 written by Afeique Sheikh.\n\n')

% Before running, make sure that Ch04_Data_Sp10.xlsx is closed and stored in 
% the current working directory, otherwise Matlab will be unable to read it
file = 'Ch04_Data_Sp10.xlsx'
fprintf('Original Data read from %s\n\n', file)

% When reading data into Matlab from Excel, the syntax is:
% VariableName = xlsread('filename', 'sheet name', 'cell range')

% If 'sheet name' is omitted, defaults to first sheet

% If 'cell range' is not defined, Matlab reads the entire sheet

resistors = xlsread(file, 'OldResistors', 'A4:E30')

nRows = size(resistors, 1); % num rows in matrix
nCols = size(resistors, 2); % num cols in matrix
nResistors = nRows * nCols;

% %i output specifier used for integers
fprintf('\n%i rows by %i columns of data were read.\n\n', nRows, nCols)
fprintf('%i resistor values were read.\n\n', nResistors)

% sum() function has two options when arg is a matrix
ColumnSums = sum(resistors, 1) % vector of column sums
RowSums = sum(resistors, 2) % vector of row sums

% When the arg to the sum() function is a vector, the result will be a scalar
OverallSum = sum(ColumnSums)
OverallSum2 = sum(RowSums)

% mean() function also has two options for matrix args
ColumnMeans = mean(resistors, 1)
RowMeans = mean(resistors, 2)

% taking the mean() of a vector produces a scalar
OverallMean = mean(ColumnMeans)
OverallMean2 = mean(RowMeans)

% std() function takes standard deviation of a sample
% 0 - represents standard dev. of a sample using sqrt(sum((x-xmean)^2)/(N-1))
% 1 - causes the stdev of each column to be computed
% 2 - causes the stdev of each row to be computed
ColumnStds = std(resistors, 0, 1)
RowStds = std(resistors, 0, 2)

OverallStd_cols = std(ColumnStds) % stdev of the column stdevs
OverallStd_rows = std(RowStds) % stdev of the row stdevs

% can compute the overall stdev using a vectorized formula

% step 1: compute (x-xmean)^2 for each value in resistors matrix
deviations = (resistors - OverallMean).^2;

% step 2: sum all the deviations
SumDevColumns = sum(deviations, 1);
SumDeviattions = sum(SumDevColumns);

% step 3: compute sqrt(sum((x-xmean)^2)/(N-1))
StdResistors = sqrt(SumDeviations/(nResistors-1))

% output
fprintf('\nThe resistors matrix has the following attributes:\n\n')
fprintf('Number of resistor values = %i\n\n, nResistors')
fprintf('Sum of all resistances = %g Ohms\n\n', OverallSum)
fprintf('Mean resistance = %g Ohms\n\n', OverallMean)
fprintf('Resistance Standard Deviation = %g Ohms\n\n', StdResistors)


% save calculations to spreadsheet -- file must be closed, otherwise Matlab
% cannot write to it
fprintf('These calculated values have been written to %s\n\n', file)
xlswrite(file, nResistors, 'OldResistors', 'I4:I4')
xlswrite(file, OverallSum, 'OldResistors', 'I5:I5')
xlswrite(file, OverallMean, 'OldResistors', 'I6:I6')
xlswrite(file, StdResistors, 'OldResistors', 'I7:I7')

% The save command allows Matlab to save variables from the current workspace
% to a special .mat file for later use.

% syntax of the save command: 
% save filename Var1 Var2 ...
% If no variable names are specified, then all variables in current workspace
% are saved
file = 'Tutorial_04_1_Workspace.mat'
save Tutorial_04_1_Workspace.mat nRows nCols nResistors OverallMean StdResistors;

fprintf('The following Workspace variables have been saved to: %s\n\n', file)
fprintf('        nRows = %3i\n', nRows)
fprintf('        nCols = %3i\n', nCols)
fprintf('   nResistors = %3i\n', nResistors)
fprintf('  OverallMean = %6.2f Ohms\n', OverallMean)
fprintf(' StdResistors = %6.2f Ohms\n', StdResistors)
disp(' ')

