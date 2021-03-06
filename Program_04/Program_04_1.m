% Filename: Program_04_1
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate how to read from and write to a
% text (.txt) file

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
format compact % remove extra blank lines after output

fprintf('Output for Program_04_1 written by Afeique Sheikh.\n\n')

% Before running, make sure that Ch04_Data_Sp10.xlsx is closed and stored in 
% the current working directory, otherwise Matlab will be unable to read it
file = 'Ch04_Data_Sp10.xlsx';
sheet = 'Coins';
fprintf('Original data read from %s sheet in %s\n\n', sheet, file)

% load coin data from Coins spreadsheet
CoinMatrix = xlsread(file, 'Coins', 'B3:G102');

% matrix indices
CHANGE = 1;
QUARTERS = 2;
DIMES = 3;
NICKELS = 4;
PENNIES = 5;
TOTAL = 6;

% print table header
fprintf('Change Due (cents) \t Quarters \t Dimes \t Nickels \t Pennies \t Total Coins\n')

nRows = size(CoinMatrix, 1);
nCols = size(CoinMatrix, 2);
CoinTotals = zeros(1,9);
% use integer division fix() function to calculate change due
for row=1:nRows
    % variable for storing remainder of change due
    changeDue = CoinMatrix(row, CHANGE);
    
    % integer divide change due by 25 cents
    % store integer result as this row's num quarters in matrix
    CoinMatrix(row, QUARTERS) = fix(changeDue/25);
    % subtract amount from change remainder
    changeDue = changeDue - 25*CoinMatrix(row, QUARTERS);
    
    % integer divide change due by 10 cents
    % store integer result as this row's num dimes in matrix
    CoinMatrix(row, DIMES) = fix(changeDue/10);
    % subtract amount from change remainder
    changeDue = changeDue - 10*CoinMatrix(row, DIMES);
    
    % integer divide change due by 5 cents
    % store integer result as this row's num nickels in matrix
    CoinMatrix(row, NICKELS) = fix(changeDue/5);
    % subtract amount from change remainder
    changeDue = changeDue - 5*CoinMatrix(row, NICKELS);
    
    % change remainder is in pennies, store in matrix row's num pennies
    CoinMatrix(row, PENNIES) = changeDue;
    
    % sum this row's coin counts to get total number of coins
    CoinMatrix(row, TOTAL) = sum(CoinMatrix(row, QUARTERS:PENNIES));
    
    % keep track of each time a particular total occurs using vector
    CoinTotals( CoinMatrix(row, TOTAL) ) = CoinTotals( CoinMatrix(row, TOTAL) ) + 1;
    
    % print out this row's counts
    fprintf('       %2d         \t    %d    \t   %d   \t   %d    \t    %d   \t     %d     \n',...
        CoinMatrix(row, CHANGE), CoinMatrix(row, QUARTERS),...
        CoinMatrix(row, DIMES), CoinMatrix(row, NICKELS),...
        CoinMatrix(row, PENNIES), CoinMatrix(row, TOTAL))
end

% write the matrix to the spreadsheet
xlswrite(file, CoinMatrix(:, QUARTERS:TOTAL), sheet, 'C4:G102')

% print coin totals, and number of times each total occurs
disp(' ')
fprintf('Coin Total \t Number of Occurrences\n')
nRows = length(CoinTotals);
for i=1:nRows
    fprintf('     %d      \t        %d\n', i, CoinTotals(i))
end
% sum the CoinTotals vector and store as last item in vector
CoinTotals(10) = sum(CoinTotals);
fprintf('    Sum      \t        %d\n', CoinTotals(10))

% write CoinTotals vector to spreadsheet
xlswrite(file, CoinTotals', sheet, 'J4:J13')

fprintf('\nAll these values have been written to the %s sheet in %s\n\n', sheet, file)
