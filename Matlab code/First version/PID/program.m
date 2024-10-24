%% Program PID
clc;
%Initialize
[tsim, T] = siminit;
Kp = [2, 9.46];
Ki = [0.01, 0.282];
Kd = 1.5;
sim('model_sim_classic.slx');
graphs(t, values);
