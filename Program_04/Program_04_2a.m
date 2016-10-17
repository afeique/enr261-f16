% Filename: Program_04_2a
% Author: Afeique Sheikh

% Program Description:
% The purpose of this program is to demonstrate how to read from and write to a
% text (.txt) file

% Clear the command window and all variables
clc % clear command window
clear % clear all variables from workspace
format compact % remove extra blank lines after output

fprintf('Output for Program_04_2a written by Afeique Sheikh.\n\n')

file = 'RawGrades.txt';
GradeMatrix = load(file);



NUMBER = 1;
TUTORIAL_AVE = 2;
PROGRAM_AVE = 3;
QUIZ_AVE = 4;
PORTFOLIO_AVE = 5;
PRESENTATION_AVE = 6;

COURSE_AVE = 7;

% compute course averages for each student using weighted averages
numStudents = size(GradeMatrix, 1);
for student=1:numStudents
    av = .2*GradeMatrix(student, TUTORIAL_AVE);
    av = av + .2*GradeMatrix(student, PROGRAM_AVE);
    av = av + .4*GradeMatrix(student, QUIZ_AVE);
    av = av + .15*GradeMatrix(student, PORTFOLIO_AVE);
    av = av + .05*GradeMatrix(student, PRESENTATION_AVE);
    % save student's course average to GradeMatrix
    GradeMatrix(student, COURSE_AVE) = av;
end

% compute the standard deviation using the student course averages
% create a vector containing all student course averages
averages = GradeMatrix(:, COURSE_AVE);
% compute the mean of all student course averages
averagesMean = mean(averages);
% create vector of student deviations from the mean of all averages
averagesDeviations = (averages - averagesMean).^2;
% compute the standard deviation of all student course averages
averagesStdev = sqrt(sum(averagesDeviations)/(numStudents-1));

% compute letter grade cutoffs based on class standard deviation
cutoffA = averagesMean + 1.5*averagesStdev;
cutoffB = averagesMean + .5*averagesStdev;
cutoffC = averagesMean - .5*averagesStdev;
cutoffD = averagesMean - 1.5*averagesStdev;

% open the FinalGrades file for writing
file = 'FinalGrades.txt';
file_h = fopen(file,'w');

% print title
fprintf(file_h, 'Final Grade Report for ENR 261 Spring 2010\n\n');

% print statistics
fprintf(file_h, 'Mean Numerical Grade = %3.1f, Standard Deviation = %3.1f\n\n',...
    averagesMean, averagesStdev);

fprintf(file_h, 'Student Tutorial  Program  Quiz  Portfolio  Presentation    Course    Letter\n');
fprintf(file_h, 'Number    Ave       Ave     Ave     Ave          Ave          Ave     Grade \n');
% loop through GradeMatrix calculating letter grades for each student
for student=1:numStudents
    av = GradeMatrix(student, COURSE_AVE);
    
    % assume the student goofed off and failed the course
    letterGrade = 'F';
    if (av >= cutoffA)
        letterGrade = 'A';
    elseif (av >= cutoffB)
        letterGrade = 'B';
    elseif (av >= cutoffC)
        letterGrade = 'C';
    elseif (av >= cutoffD)
        letterGrade = 'D';
    end
    
    % print this student's grades, average, and letterGrade
    fprintf(file_h, '%5d     %3d       %3d     %3d     %3d          %3d         %.1f      %s\n',...
        GradeMatrix(student, NUMBER),...
        GradeMatrix(student, TUTORIAL_AVE),...
        GradeMatrix(student, PROGRAM_AVE),...
        GradeMatrix(student, QUIZ_AVE),...
        GradeMatrix(student, PORTFOLIO_AVE),...
        GradeMatrix(student, PRESENTATION_AVE),...
        GradeMatrix(student, COURSE_AVE), letterGrade);
end

% close the file handle
fclose(file_h);

