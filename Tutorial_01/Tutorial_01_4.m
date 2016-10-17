% Filename: Tutorial_01_4
% Author:   Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate how to create 2D plots.

% Clear the command window and all variables
clc % clear contents of the command window
clear % clears all defined variables from the Matlab workspace
close all % closes all figure windows

% Output the title and author to the command window.
fprintf('Output for Tutorial_01_4 written by Afeique Sheikh.\n\n')

% Define the x and y vectors
x = [0:0.25:3]; % vector of numbers from 0 to 3 in increments of 0.25
y = 10*exp(-x);

% plot() opens Figure Window 1 and creates a plot of discrete points
help plot % the help command will output the help text for plot()
plot(x, y, 'r*') % 'r*' indicates points are plotted with red asterisks
                 % other formatting options are listed in the help

grid on                            % adds grilines to the graph
xlabel('Independent Variable (X)') % Adds a label below the X axis
ylabel('Dependent Variable (Y)')   % Adds a label left of the Y axis
title('Y = 10*exp(-X)')            % Adds a title above the graph

figure  % Opens Figure Window 2
        % Without the 'figure' command, the next plot would erase
        % the first plot in Figure Window 1

% The fplot() command allows a function to be plotted over a given
% domain. It automatically determines an appropriate delta x for
% the given domain to prevent aliasing: a false image created when
% sampling is not frequent enough (delta x is too large)
fplot('3.5^(-0.5*x)*cos(6*x)', [-2.0, 4.0])

grid on                            % adds grilines to the graph
xlabel('Independent Variable (X)') % Adds a label below the X axis
ylabel('Dependent Variable (Y)')   % Adds a label left of the Y axis
title('Y = 3.5^(-0.5*X)*cos(6*X)') % Adds a title above the graph

