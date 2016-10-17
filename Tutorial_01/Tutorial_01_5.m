% Filename: Tutorial_01_5
% Author:   Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate how to create multiple
% 3D plots.

% Clear the command window and all variables
clc % clear contents of the command window
clear % clears all defined variables from the Matlab workspace
close all % closes all figure windows
format compact  % removes blank lines after variable output

% Output the title and author to the command window.
fprintf('Output for Tutorial_01_5 written by Afeique Sheikh.\n\n')

% Define x and y vectors
fprintf('The vectors define the range of x and y values\n')
xVector = [-4:1:0]
yVector = [0:1:2]

% Create the x,y mesh for creating a surface plot
fprintf('\nThe x,y values define the x,y coordinates\n')
[x,y] = meshgrid(xVector, yVector)

% Compute the z values for each (x,y) coordinate
fprintf('\nz = x + y evaluated at each (x,y) coordinate\n')
z = x+y

% creating a finer mesh for making a surface plot
% output is suppressed using a semicolon
xVector = [-3:.2:3];
yVector = xVector;
[x,y] = meshgrid(xVector, yVector);
z = 1.8 .^ (-1.5 * sqrt(x.^2 + y.^2)) .* cos(.5*y).*sin(x);

% Create a surface plot and add title and axis labels
surf(x, y, z)
grid on % adds grilines to the graph
xlabel('X') % Adds an X axis label
ylabel('Y') % Adds a Y axis label
zlabel('Z') % Adds a Z axis label
title('Surface Plot') % Adds a title

figure % open a new figure window

% Create a 3D contour plot and add title and axis labels
contour3(x, y, z, 20) % 20 is the number of contour lines

grid on % adds gridlines
xlabel('X') % Adds an X axis label
ylabel('Y') % Adds a Y axis label
zlabel('Z') % Adds a Z axis label
title('3D Contour Plot') % Adds a title

figure % open a new figure window

% Create a 2D contour plot and add title and axis labels
contour(x, y, z, 20) % 20 is the number of contour lines

grid on % adds gridlines
xlabel('X') % Adds an X axis label
ylabel('Y') % Adds a Y axis label
zlabel('Z') % Adds a Z axis label
title('2D Contour Plot') % Adds a title

figure % open a new figure window

% Create a 3D stem plot with title and axis labels
clear % clear all variables
t = [0:.2:10] % time variable
x=t; y=sin(t); z=t.^1.5; % define the x,y,z points to plot

stem3(x,y,z,'fill') % fill adds a solid fill to the data points

grid on % adds gridlines
xlabel('X') % Adds an X axis label
ylabel('Y') % Adds a Y axis label
zlabel('Z') % Adds a Z axis label
title('Stem Plot') % Adds a title