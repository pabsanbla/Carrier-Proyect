%% Program
clc;
%Initialize
[tsim, T] = siminit;
for i = 1 : 3
    for j = 1 : 3
        parameters(i, j)
        sim('model_sim.slx');
        graphs(i, j, t, values)
    end 
end
