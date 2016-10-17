% Filename: Program_02_9a
% Author:   Afeique Sheikh

% Program description:
% This program converts an input with units of either cm, in, or ft
% to an output with the specified units (also either cm, in, or ft)

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace
diary Program_02_9.txt % text file for recording multiple runs
% output title and author to command window
fprintf('Output for Program_02_9a written by Afeique Sheikh.\n\n')

disp(' ')
mag_in = input('Input magnitude: ');

input_msg = 'Specify the input units (cm, in, or ft): ';
unit_in = input(input_msg, 's');
while ~strcmp(unit_in, 'cm') && ~strcmp(unit_in, 'in') && ~strcmp(unit_in,'ft')
    fprintf('Invalid input units "%s", please try again.\n', unit_in)
    unit_in = input(input_msg, 's');
end

input_msg = 'Specify the output units (cm, in, or ft): ';
unit_out = input(input_msg, 's');
while ~strcmp(unit_out, 'cm') && ~strcmp(unit_out, 'in') && ~strcmp(unit_out,'ft')
    fprintf('Invalid output units "%s", please try again.\n', unit_in)
    unit_out = input(input_msg, 's');
end

% useful conversion constants
cm_per_in = 2.54;
cm_per_ft = 30.48;
in_per_cm = 1/cm_per_in;
ft_per_cm = 1/cm_per_ft;


% c is our conversion constant to convert the input into cm
c = 1; % default to converting from cm to cm
if strcmp(unit_in, 'in')
   c = cm_per_in; 
elseif strcmp(unit_in, 'ft')
   c = cm_per_ft;
end

% convert the input into cm
mag_out = c*mag_in;

% c is our conversion constant to convert the output into the desired
% unit
c = 1; % default to converting cm back into cm
if strcmp(unit_out, 'in')
   c = in_per_cm; 
elseif strcmp(unit_out, 'ft')
   c = ft_per_cm;
end

% converted output magnitude in desired units
mag_out = c*mag_out;

disp(' ')
fprintf('%g %s = %g %s\n\n', mag_in, unit_in, mag_out, unit_out)
