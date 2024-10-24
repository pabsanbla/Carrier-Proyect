%% Program
clc; close all;
%Initialize
[tsim, T] = siminit;
Kp = [2, 9.46];
Ki = [0.01, 0.282];
Kd = 1.5;
sim('model_sim.slx');
graphs(t, values);
