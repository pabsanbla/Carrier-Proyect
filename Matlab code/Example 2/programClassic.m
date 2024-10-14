%%Program 
%Clean and start
close all; clc;
%Initialize variables of system
initValues = initialize();
%Initialize variables of control
[Kp, Ki] = cohenCoonPIVar();
%Adjust
Kp = Kp/2;
Ki = Ki;
%simulation
sim('simPIClassical.slx');
%Graphics
graphs(values);
%% Integral action doubles the proportional
%% ts = 0.65 erp ~= 0