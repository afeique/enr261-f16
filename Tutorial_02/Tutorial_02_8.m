% Filename: Tutorial_02_8
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to demonstrate the use of if and if-else
% constructors.

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace
diary Tutorial_02_8.txt % file for recording multiple runs of the program
% output title and author to command window
fprintf('Output for Tutorial_02_8 written by Afeique Sheikh.\n\n')

% input numerical grade
grade = input('Enter a numerical grade (>= 60 is passing): ');
% Heading for the if test output
fprintf('\nif (grade >= 60)\n\t')
fprintf('fprintf(''Your grade is passing.\\n'')\nend\n\n')
if (grade >= 60)
    fprintf('Your grade is passing.\n\n')
end

% heading for the if-else test output
fprintf('\n\nif (grade >= 60)\n\t')
fprintf('fprintf(''Your grade is passing.\\n'')\nelse\n\t')
fprintf('fprintf(''Your grade is failing.\\n'')\nend\n\n')
fprintf('Your grade is ')
if (grade >= 60)
    fprintf('passing')
else
    fprintf('failing')
end
fprintf('.\n\n')

% logical operators can be used in an if test to link multiple relational
% values
% testing to see if a resistor falls within tolerance of a nominal value
nominal = 100; % nominal value of resistance in ohms
tol = 10; % tolerance in ohms
r = input('Enter the resistance value in Ohms: ');

% in the conditional below, (nominal-tol) <= r <= (nominal+tol)
% must be written using a logical operator. Note that Matlab prefers
% the logical operator written twice in if-statements
fprintf('\nThe resistance is ')
if (r < (nominal-tol) || r > (nominal+tol))
    fprintf('not ')
end
fprintf('within %g (+/-) %g\n\n\n', nominal, tol)

diary off % close the diary file

