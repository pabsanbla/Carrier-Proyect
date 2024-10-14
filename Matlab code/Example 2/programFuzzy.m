%%Program 
%Clean and start
close all; clc;
%Initialize variables of system
initValues = initialize();
%simulation
sim('simPIFuzzy.slx');
%Graphics
graphs(values);
%% Derivative evenly distributed and proportinal copied from P
%% ts = 5 erp ~= 0