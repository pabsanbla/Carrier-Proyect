%% Comparision
clc; close all;
%functions
initValues = initialize();
programClassic();
programFuzzy();
%Values
classic = valuesClassic.signals.values(:,4);
fuzzy = valuesFuzzy.signals.values(:,4);
errorcl = valuesClassic.signals.values(:,2);
errorfuz = valuesFuzzy.signals.values(:,2);
time = valuesClassic.signals.values(:,5);
%Graphs
figure();
subplot(2,1,1);plot(time, classic, 'r-', ...
                    time, fuzzy, 'b-', 'LineWidth', 1.5);
xlabel('Time (s)');ylabel('Velocity (rad/s)');grid();legend('Classic', 'Fuzzy');
subplot(2,1,2);plot(time, errorcl, 'g-', ...
                    time, errorfuz, 'k--', 'LineWidth', 2);
xlabel('Time (s)');ylabel('Velocity (rad/s)');grid();legend('ErrorClas', 'ErrorFuzz');
sgtitle('Comparision');
%% Classic is better in this situation