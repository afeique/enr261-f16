% Filename: Tutorial_04_3
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate how to read from and write to a
% text (.txt) file

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
format compact % remove extra blank lines after output


fprintf('Output for Tutorial_04_3 written by Afeique Sheikh.\n\n')

% Data from the file temp index file will be read in.
% The file contains the monthly temperature index from 1981 to 2008.
% The index is a measure of the difference between thge present average monthly
% temperature minus the monthly average for that month from 1951 to 1980.
% A positive value indicates a rise in temperature.

% The 1st column of the file is the year, the 2nd column is the January index,
% the 3rd column is February, ..., and the 13th column is December.

file = 'NorthernHemisphereTempIndex.txt'
TempMatrix = load(file)
nRows = size(TempMatrix, 1) % # rows = # years
nCols = size(TempMatrix, 2) % # cols = 13 (1 year col + 12 month cols)

% extract the first column and store it as a vector
YearVector = TempMatrix(:, 1)

% number of years of data
LengthYearVector = length(YearVector)

% delete year column from TempMatrix
% TempMatrix(:, 1) represents all the rows in column 1 (years)
TempMatrix(:, 1) = [ ] % deletes the first column
% TempMatrix now has 12 columns instead of 13
nRows = size(TempMatrix, 1)
nCols = size(TempMatrix, 2)

% convert all temp values in TempMatrix to degrees fahrenheit from celsius
TempMatrix = TemMatrix *.018

% compute temp means

% means of different months across all years
% i.e. mean of every January from 1981 to 2008
MeanMonthlyTemps = mean(TempMatrix, 1)

% means of each year
% i.e. mean of January through December in 1981
MeanYearlyTemps = mean(TempMatrix, 2)

% create a table of temperature changes in output file

% open the file and create a file handle
file = 'Tutorial_04_3_Output.txt';
file_h = fopen(file,'w');
fprintf(file_h, 'Table of Northern Hemisphere Temperature Changes in Degrees Fahrenheit\n\n');
fprintf(file_h, 'Year \t  Jan \t  Feb \t  Mar \t  Apr \t  May \t  Jun \t  Jul \t  Aug \t  Sep \t  Oct \t  Nov \t  Dec \t  Mean');
for year=1:nRows
    fprintf(file_h, '\n%4i', YearVector(year));
    for month=1:nCols
        fprintf(file_h, ' \t %5.2f', TempMatrix(year, month));
    end
end

% prints the word mean below the last year value in the first column
fprintf(file_h, '\nMean')
for month=1:nCols
    fprintf(file_h, ' \t %5.2f', MeanMonthlyTemps(month));
end

% add blank lines to the bottom of the file and close handle
fprintf(file_h, '\n\n');
fclose(file_h);

fprintf('\n\nThe output data table is in the file %s\n\n', file)


