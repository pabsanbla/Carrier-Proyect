%% Program
%% Before play it init the controller in machine expert basic
close all; bdclose('all'); clc; 
init; %activate the modbus
sim("model_sim_fuzzy.slx");
graphs(t,values);
