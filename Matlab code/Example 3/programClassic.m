%%Program 
%Clean and start
close all; clc;
%Initialize variables of system
initValues = initialize();
%Initialize variables of control
[Kp, Ki, Kd] = cohenCoonPIDVar();
%Adjust
Kp = Kp + 0.1;
Ki = Ki - 0.4;
Kd = Kd/100;
%simulation
sim('simPIDClassical.slx');
%Graphics
graphs(values);
%% Integral action doubles the proportional
%% ts = 0.57 erp ~= 0