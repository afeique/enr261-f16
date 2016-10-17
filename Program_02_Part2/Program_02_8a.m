% Filename: Program_02_8a
% Author:   Afeique Sheikh

% Program description:
% Purpose of this program is to plot the speed and gear of a car as it
% accelerates.

% clear command window and all variables
clc % clears contents of the command window
clear % clears all defined variables from the workspace
% output title and author to command window
fprintf('Output for Program_02_8a written by Afeique Sheikh.\n\n')

% resolution of milliseconds
res = 1000;
% time vector
t = 0:1/res:6;
% velocity vector
v = 1.5*t.^2;
% create new figure and save handle to ax
figure
% plot v to with r- = red-solid line
plot(t,v,'r-')
title('Speed of Car')
xlabel('Time (s)');
ylabel('Speed (m/s)');
xlim([0 6]);
ylim([0 60]);

% vector for gear selection
len = length(t);
g = zeros(len);
for i=1:len
    if v(i) >= 0 && v(i) < 3
        g(i) = 1;
    elseif v(i) >= 3 && v(i) < 8
        g(i) = 2;
    elseif v(i) >= 8 && v(i) < 15
        g(i) = 3;
    elseif v(i) >= 15 && v(i) < 25
        g(i) = 4;
    elseif v(i) >= 25
        g(i) = 5;
    end
end
% create new figure
figure
% plot g to with b- = red-solid line
plot(t,g,'b-')
title('Gear Selection')
xlabel('Time (s)');
ylabel('Gear');
xlim([0 6]);
ylim([0 6]);