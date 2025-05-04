%% Program Fuzzy
clc; close all;
%Initialize
[tsim, T] = siminit;
[C0, C1, Cd, Ce] = gains;
sim('model_sim_fuzzy.slx');
graphs(t, values);
