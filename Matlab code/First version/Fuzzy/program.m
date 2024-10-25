%% Program Fuzzy
clc;
%Initialize
[tsim, T] = siminit;
[GE, GCE, GIE, GU, GCU] = gains(T);
sim('model_sim_fuzzy.slx');
graphs(t, values);
