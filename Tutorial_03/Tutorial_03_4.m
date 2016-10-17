% Filename: Tutorial_03_4
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate the use of complex numbers and
% functions in Matlab. Creation of  a phasor diagram for a complex number is
% also demonstrated.

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
close all % close all existing figure windows


fprintf('Output for Tutorial_03_4 written by Afeique Sheikh.\n\n')

g = 9.81;
Vi = input('Enter the launch speed in m/s: ');
theta = input('Enter the launch angle in degrees above the horizontal: ');

% compute duration of flight and time to peak (half of flight assuming launch site and target are level)
Tflight = (2*Vi*sind(theta))/g;
Tpeak = Tflight/2;

Tflight=(2*Vi*sind(theta))/g;
Tpeak=Tflight/2;

Xpeak=Vi*cosd(theta)*Tpeak; % x distance of peak
Ypeak=Vi*sind(theta)*Tpeak - ((g*Tpeak^2)/2);  % y dist of peak
VxPeak=Vi*cosd(theta); % x velocity at peak
VyPeak=Vi*sind(theta) - g*Tpeak; % y velocity at peak
Vpeak=sqrt(VxPeak^2 + VyPeak^2); % peakitty peak
t=linspace(0, Tflight, 30); % evenly spaced parameter, time t
Vx=linspace(VxPeak, VxPeak, 30); % vector of 30 constants because Vx never changes since air resistance is for suckers
Vy=Vi*sind(theta) - g.*t;  % while air resistance is negligible, gravity is not
V=sqrt(VxPeak^2 + Vy.^2); % calculate the magnitude of the velocity at each point. We could also use Vx.^2 but that's less efficient
x=Vx.*t