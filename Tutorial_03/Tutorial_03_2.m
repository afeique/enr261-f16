% Filename: Tutorial_03_2
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate the use of complex numbers and
% functions in Matlab. Creation of  a phasor diagram for a complex number is
% also demonstrated.

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
close all % close all existing figure windows


fprintf('Output for Tutorial_03_2 written by Afeique Sheikh.\n\n')

% Program Description:
% The purpose of this program is to demonstrate the use of the while loop in 
% Matlab.

msg = 'Enter a numeric grade (0 to 100)  or a negative to quit: ';
NumericalGrade=input(msg);
while (NumericalGrade >= 0)
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
    fprintf('\mYour letter grade is: %s ', LetterGrade)
    NumericalGrade = input(msg);
end



fprintf('\n\nTaylor Series of Sine using a while loop.\n\n')
x = pi/6'; % angle in rads
tolerance = 1e-10;
SineX = '\t\t\t\t tolerance = %12.10f\n\n'
SineX = sin(x);
fprintf('\n\nTaylor Series of sine using a while loop.\n\n')

x=pi/6; % angle in rads
tolerance=1e-10;

SinX=sin(x);

fprintf('\t\t\t\t  tolerance = %12.10f\n\n', tolerance)
fprintf('\t\t\t\t  sin(pi/6) = %12.10f\n\n', SineX)
TaylorSin=0;
sign=1;
N=1;
while (abs(TaylorSin-SineX) > tolerance)
    TaylorSin = TaylorSin + (sign*x^N)/factorial(N);
    fprintf('TaylorSin(pi/6) with %i  terms = %12.10f\n\n', ceil(N/2), TaylorSin)
    N=N+2;
    sign=-1*sign;
end

