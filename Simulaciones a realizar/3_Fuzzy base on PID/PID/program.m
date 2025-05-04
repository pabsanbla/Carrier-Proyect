%% Program
clc; close all;
%Initialize
[tsim, T] = siminit;
Kp = [1.1, 9.46];
Ki = [0.005, 0.282];
Kd = 1.5;
sim('model_sim_classic.slx');
graphs(t, values);
