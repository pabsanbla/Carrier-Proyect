%% Comparision
clc; close all;
[tsim, T] = siminit;
% program_fuzzy(T);
% program_classic;
%% Values  
ref = PID.signals.values(:, 1);
%Fuzzy values
fuzzy_val = Fuzzy.signals.values(:, 2);
fuzzy_angle = Fuzzy.signals.values(:, 3);
fuzzy_error = Fuzzy.signals.values(:, 4);
%PID values 
pid_val = PID.signals.values(:, 2);
pid_angle = PID.signals.values(:, 3);
pid_error = PID.signals.values(:, 4);
%Graphs
figure();
subplot(3,1,1); plot(t, ref, ...
                     t, fuzzy_val, ...
                     t, pid_val, 'LineWidth', 1.5);
grid();xlabel('Time (s)');ylabel('Posiction (m)');legend('Ref','Fuzzy','PID');
subplot(3,1,2); plot(t, fuzzy_angle, ...
                     t, pid_angle, 'LineWidth', 2);
grid();xlabel('Time (s)');ylabel('Angle (rad)');legend('Fuzzy','PID');
subplot(3,1,3); plot(t, fuzzy_error, ...
                     t, pid_error, 'LineWidth', 1.5);
grid();xlabel('Time (s)');ylabel('Error (m)');legend('Fuzzy','PID');
sgtitle('Comparision');



