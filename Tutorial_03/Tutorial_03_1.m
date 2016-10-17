% Filename: Tutorial_03_1
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate the use of complex numbers and
% functions in Matlab. Creation of  a phasor diagram for a complex number is
% also demonstrated.

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
format compact % remove extra blank lines after output
close all % close all existing figure windows


fprintf('Output for Tutorial_03_1 written by Afeique Sheikh.\n\n')

% The square root of -1 is equal to a complex number 0+1i where 0 is the real
% part and 1i is the imaginary part
Z1 = sqrt(-1)
% Matlab also defines variables i and j as the sqrt(-1)
% When using complex numbers, you should avoid redefining i and j
Z2 = i % outputs the value of i
Z3 = j % outputs the value of j
disp(' ') % blank line


% A complex number can be defined in the following ways:
Z4 = 2 + 3i % without the * operator
Z5 = 1 + -1*i % with the * operator

% When complex numbers are added, real and imaginary parts are summed separately
Z4PlusZ5 = Z4+Z5


% When complex numbers are multiplied, the FOIL method is used
Z4TimesZ5 = Z4*Z5

% manually creating complex numbers, the function way
Z = complex(3,4)

% extracting real and imaginary parts
RealZ = real(Z)
ImagZ = imag(Z)

% magnitude of the complex number can be computed using Pythagorean thm or abs()
MagZ = sqrt(RealZ^2 + ImagZ^2)
MagZ = abs(Z)

% imaginary angle
AngleZ = atan2(ImagZ, RealZ)
AngleZ = angle(z)
disp(' ')

% Complex number can be expressed in cartesian or polar form
fprintf('Z in Cartesian form = %g + %gi\n', RealZ, ImagZ)
% C*e^(i*theta)
fprintf('Z in Polar form = %gexp(%gi)\n\n', MagZ, AngleZ)

% programmatic equivalency between Cartesian and Polar forms
Zcart = RealZ + ImagZ*i
Zpol = MagZ*exp(AngleZ*i)

Zphasor = [complex(0,0),Z];
plot(Zphasor,'LineWidth',2)
title('Phasor of 3+4i, Magnitude=5, Phase Angle=0.9273 radians')
xlabel('Real Axis')
ylabel('Imaginary Axis')
grid
