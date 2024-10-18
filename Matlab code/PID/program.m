%% Program
clc; close all;
%Initialize
[tsim, T] = siminit;
Kp = [4.5, 0.95];
Kd = [12, 0.15];
sim('model_sim.slx');
graphs(t, values);
