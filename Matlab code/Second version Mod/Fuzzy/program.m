%% Program Fuzzy
clc; close all;
%Initialize
[tsim, T] = siminit;
sim('model_sim_fuzzy.slx');
graphs(t, values);
