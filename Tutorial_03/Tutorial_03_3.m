% Filename: Tutorial_03_3
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate the use of complex numbers and
% functions in Matlab. Creation of  a phasor diagram for a complex number is
% also demonstrated.

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
close all % close all existing figure windows


fprintf('Output for Tutorial_03_3 written by Afeique Sheikh.\n\n')

% Program Description:
% The purpose of this program is to demonstrate how a vector of values can be  
% be read in using a single input statement. The use of parentheses will also
% be used to access individual elements of a vector

NumericalGrade = input('Enter numerical grades and enclose them in brackes [ ]:\n')
NumberOfGrades = length(NumericalGrade);
fprintf('\n%i numerical grades were entered\n\n', NumberOfGrades)
fprintf('ENR261 Quiz Grades\n\n')
fprintf('Student    Numerical      Letter\n')
fprintf(' Number     Grade          Grade\n')
for n=1:1:NumberOfGrades
    if NumericalGrade(n) >= 90
        LetterGrade(n) = 'A';
    elseif NumericalGrade(n) >= 80
        LetterGrade(n) = 'B';
    elseif NumericalGrade(n) >= 80
        LetterGrade(n) = 'C';
    elseif NumericalGrade(n) >= 80
        LetterGrade(n) = 'D';
    else
        LetterGrade(n) = 'F';
    end
    fprintf('      %2i \t\t %3.0f \t\t %s\n', n,  NumericalGrade(n), LetterGrade(n))
             