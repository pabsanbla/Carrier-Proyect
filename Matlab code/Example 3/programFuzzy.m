%%Program 
%Clean and start
close all; clc;
%Initialize variables of system
initValues = initialize();
%simulation
sim('simPIDFuzzy.slx');
%Graphics
graphs(values);
%% Derivative evenly distributed and proportinal copied from PI, Ki the same as Classic
%% ts = 0.65 erp ~= 0