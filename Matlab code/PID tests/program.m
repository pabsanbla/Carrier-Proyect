%% Program Fuzzy
clc; close all, bdclose('all');
%Variables
m_vect = [5, 10, 2];
%Initialize
[tsim, T] = siminit;
Kp = [1.1, 9.46];
Ki = [0.005, 0.282];
Kd = 1.5;
tam = [0 : T : tsim];
changes = zeros(length(tam), 5, 3);
%Changes in m
for i = 1 : 3
    m = m_vect(i);
    sim('model_sim_classic.slx');
    changes(:, :, i) = values;
end
graphs(t, changes);

