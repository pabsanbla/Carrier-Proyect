%% Program Fuzzy
clc;
%Initialize
[tsim, T] = siminit;
[C0, C1, Cd, Ce] = gains(T); 
sim('model_sim_fuzzy.slx');
graphs(t, values);
