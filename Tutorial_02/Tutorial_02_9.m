% Filename: Tutorial_02_9
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to demonstrate the use of if-elseif-else and
% switch statements.

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace
diary Tutorial_02_9.txt % file for recording multiple runs of the program
% output title and author to command window
fprintf('Output for Tutorial_02_9 written by Afeique Sheikh.\n\n')

% if-elseif-else allows for multiple tests
% execution is transferred out of this construct after the first true test
% is encountered
NumericalGrade = input('Enter a numerical grade (0 to 100): ');
if NumericalGrade >= 90
    LetterGrade = 'A';
elseif NumericalGrade >= 80
    LetterGrade = 'B';
elseif NumericalGrade >= 70
    LetterGrade = 'C';
elseif NumericalGrade >= 60
    LetterGrade = 'D';
else
    LetterGrade = 'F';
end
% %s format specifier is used for string output
fprintf('\nYour letter grade using if-elseif-else is: %s\n', LetterGrade)

% if multiple if-statements were used, the only two possible grades would
% be D or F because each if-statement is executed.
if NumericalGrade >= 90
    LetterGrade = 'A';
end
if NumericalGrade >= 80
    LetterGrade = 'B';
end
if NumericalGrade >= 70
    LetterGrade = 'C';
end
if NumericalGrade >= 60
    LetterGrade = 'D';
end
if NumericalGrade < 60
    LetterGrade = 'F';
end
fprintf('\nYour letter grade using multiple if-statements is: %s\n\n',...
    LetterGrade)

% The 's' input specifier allows the user to input the grade without
% apostrophes
LetterGrade = input('Enter a letter grade (A, B, C, D, or F): ','s');
% the switch-case-otherwise tests for equality with a series of cases
fprintf('\nYour numerical grade is ')
switch LetterGrade % the case that matches LetterGrade will be executed
    case{'A','a'} % this format allows for case "groups"
        fprintf('>= 90')
    case{'B','b'}
        fprintf('>= 80 and < 90')
    case{'C','c'}
        fprintf('>= 70 and < 80')
    case{'D','d'}
        fprintf('>= 60 and < 70')
    case{'F','f'}
        fprintf('< 60')
    otherwise
        fprintf('INVALID.')
end
fprintf('\n\n')

diary off  % closes the diary file