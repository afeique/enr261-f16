% Filename: Program_03_1
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to calculate the impedance of an RLC
% circuit at a variety of frequencies.

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
format SHORTE
close all % close all existing figure windows


fprintf('Output for Program_03_1 written by Afeique Sheikh.\n\n')

w = 1000:250:10000;
R = 2;
L = 4e-3;
C = 10e-6;
w0 = 1/sqrt(L*C);
Z = R + ((w*L) - (1./(w*C)))*1i;
Z0 = R + ((w0*L) - (1/(w0*C)))*1i;
Z0mag = abs(Z0);
Z0ang = angle(Z0);
Zmag = abs(Z);
Zang = angle(Z);
t = [w' Zmag' Zang'];
fprintf('     w (1/s)    Zmag (V/A)  Angle (rad)\n')
disp(t);

disp(' ')
fprintf('The resonant frequency is: %g (1/s)\n\n', w0) 

figure
subplot(2,1,1)
plot(w, Zmag, w0, Z0mag, 'r*')
grid on
title('RLC Series Circuit')
xlabel('Angular Frequency (1/s)')
ylabel('Magnitude of Impedance V/A')
legend('Zmag', 'Zmag at w0', 'Location', 'NorthEast')

subplot(2,1,2)
plot(w, Zang, w0, Z0ang, 'r*')
grid on
title('RLC Series Circuit')
xlabel('Angular Frequency (1/s)')
ylabel('Phase Angle of Impedance (rad)')
legend('Phase Angle', 'Angle at w0', 'Location', 'SouthEast')

figure

subplot(2,2,1)
Z4750 = R + ((4750*L) - (1/(4750*C)))*1i;
Z4750_phasor = [complex(0,0), Z4750];
plot(Z4750_phasor, 'LineWidth', 2)
grid on
title('Phasor for w=4750 1/s')
xlabel('Real Z (V/A)')
ylabel('Imaginary Z (V/A)')

subplot(2,2,2)
Z5000 = R + ((5000*L) - (1/(5000*C)))*1i;
Z5000_phasor = [complex(0,0), Z5000];
plot(Z5000_phasor, 'LineWidth', 2)
grid on
title('Phasor for w=5000 1/s')
xlabel('Real Z (V/A)')
ylabel('Imaginary Z (V/A)')

subplot(2,2,3)
Z5250 = R + ((5250*L) - (1/(5250*C)))*1i;
Z5250_phasor = [complex(0,0), Z5250];
plot(Z5250_phasor, 'LineWidth', 2)
grid on
title('Phasor for w=5250 1/s')
xlabel('Real Z (V/A)')
ylabel('Imaginary Z (V/A)')