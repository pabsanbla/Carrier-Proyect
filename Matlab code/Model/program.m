%% Program
clc;close all;bdclose('all');
%Initialize
[tsim, T] = siminit;
sim("model_sim.slx");
graphs(t, values)