% Filename: Tutorial_05_3
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate how relational operators
% can be used in mathematical expressions.

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace

fprintf('Output for Tutorial_05_3 written by Afeique Sheikh.\n\n')

fprintf('\nReplacing negatives with 0 in vector C\n\n')
C = -4:2:4;
NegLocations = C<0;

fprintf('           C = %2d %2d %2d %2d %2d\n', C)
fprintf('NegLocations = %2d %2d %2d %2d %2d\n', NegLocations)

% replaces elements in C with 0
C(NegLocations) = 0;
fprintf('           C = %2d %2d %2d %2d %2d\n', C)

% avoiding division by 0
clear % clear workspace variables

fprintf('\nAvoiding division by 0\n\n')
x = [0 4 0 8 0];
y = 1./x; % creates divid by zero for 1st, 3rd, and 5th elements

fprintf('This operation creates a divide by zero\n')
fprintf('       x = %5d \t %5d \t %5d \t %5d \t %5d\n',x)
fprintf('y = 1./x = %5.3f \t %5.3f \t %5.3f \t %5.3f \t %5.3f\n',y)

% replace 0 elements with eps = 2.220e-16, the smallest increment in Matlab
fprintf('Replace the 0 elements in x with eps(the smallest increment in Matlab)\n\n')


% The format specifier %e outputs in scientific notation
% The format specifier %g is a more compact form of %e that trims insignificant zeros
fprintf('eps = %9.3e\n\n',eps)



% ZeroLocation equals 1 when x=0 and 0 for all other values of x
ZeroLocations = (x == 0);
fprintf('            x = %5d \t %5d \t %5d \t %5d \t %5d\n', x)
fprintf('ZeroLocations = %5d \t %5d \t %5d \t %5d \t %5d\n', ZeroLocations)

% replace 0s in x with eps
x(ZeroLocations) = eps;
fprintf('            x = %9.3e \t %9.3e \t %9.3e \t %9.3e \t %9.3e\n', x)

% there are no more zero elements in x. The zero elements have been
% replaced with eps
y = 1./x;
fprintf('     y = 1./x = %9.3e \t %9.3e \t %9.3e \t %9.3e \t %9.3e\n',y)

% Avoiding Infinity or really large terms
clear % clear workspace vars

x = 0 : pi/24 : 2*pi;

% y will be very large when x = pi/2 and 3*pi/2
y = tan(x);

% LargeLocations = 1 when abs(y) > 1e10 and 0 otherwise
LargeLocations = abs(y) > 1e10;
% copy contents of y into y2
y2 = y;
% replace very large values in y2 with 0
y2(LargeLocations) = 0;

% The matrix table contains a separate row for each row vector
table = [x;y;y2]

% column headings for table
fprintf('\nReplacing very large values in a vector with 0s\n\n')
disp(' x(Rad)   y=tand(x)   y2')

% The following fprintf statement prints 3 numerical values per line
% The values of the matrix table are printed in column order.
% All the values of column 1 are printed from top to bottom first,
% then this procedure is repeated for column 2, 3,...N (last column).
% Since each column 
fprintf('%6.4f  %11.3e  %11.3e\n',table)


% plot graphs of the tan(x) with large values and with the very large
% values removed in the same figure window

% creates a figure window with 2 graphs (2 rows, 1 col),
% row 1, col 1 graph active
subplot(2,1,1)

plot(x,y) % plot of the original y vector

% addition of labels and grid lines
title('tan(x) without removing very large values')
xlabel('x (radians)')
ylabel('tan(x)')
grid on

subplot(2,1,2)
plot(x, y2)
title('tan(x) with very large values replaced with 0')
xlabel('x (radians)')
ylabel('tan(x)')
grid on

