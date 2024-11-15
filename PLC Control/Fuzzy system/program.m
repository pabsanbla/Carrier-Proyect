%% Program
close all; bdclose('all'); clc; 
init; %activate the modbus
sim("model_sim_fuzzy.slx");
graphs(t,values);
