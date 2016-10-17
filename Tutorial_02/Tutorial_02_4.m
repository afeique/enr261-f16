% Filename: Tutorial_02_4
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to demonstrate when the dot operator is
% needed in arithmetic operations involving vectors.

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace

% output title and author to command window
fprintf('Output for Tutorial_02_4 written by Afeique Sheikh.\n\n')

% define two vectors
A = [1 2 3 4 5]
B = 10.*A

% addition and subtraction between vectors don't use a dot operator as
% these operations are always performed element-by-element
APlusB = A+B
AMinusB = A-B

% Multiplication of vectors require a dot operator to signify that the
% operation is to be done element-by-element. An element-by-element
% operation of A.*B = [A(1)*B(1), A(2)*B(2) ... A(5)*B(5)]
ADotTimesB = A.*B
BDotDividedByA = B./A

% If the dot operator is omitted, then matrix multiplication or division is
% assumed. This will result in errors when multiplying and dividing two
% vectors owing to their unmatching dimensions.
% ATimesB = A*B

% When multiplying or dividing a vector by a scalar, the dot operator is
% optional. It will be performed element-by-element either way.
TwoTimesA = 2*A
TwoDotTimesA = 2.*A

% exponentiation of a vector requires a dot operator
ASquared = A.^2

% When the dot operator is used in an expression, it is said to be
% vectorized. This means that the operations will be repeated for each
% element in the vector.

% Example of projectile motion

% constants defined with units
Viy = 19.6; % initial velocity in m/s
Yi = 0;     % initial position in m
g = 9.8;    % acceleration due to gravity in m/s^2

% formulae
t = [0:.25:4];
Vy = Viy - g*t;
Y = Yi + Viy*t - (g/2)*t.^2;

% output
table = [t' Vy' Y']; % creates a table for the output
disp('Flight of a Projectile') % title for the table
disp(' ')
disp('    Time(s)  Vel(m/s)   Pos(m)') % column headings
disp(table) % numerical values for the table
