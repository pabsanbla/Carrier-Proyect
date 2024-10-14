function graphs(values)
    %Extract the values
    reference = values.signals.values(:,1);
    error = values.signals.values(:,2);
    controlSignal = values.signals.values(:,3);
    speed = values.signals.values(:,4);
    time = values.signals.values(:,5);
    %derError = values.signals.values(:,6);
    %tolerance
    tolSpeed = 0.1*(max(speed) - min(speed)); %10 percent
    tolControl = 0.2*(max(error) - min(error)); %20 percet
    %Graphs
    figure();
    subplot(2,1,1);plot(time, reference, 'r-', ...
                        time, speed, 'b-', 'LineWidth', 1.5);
    xlabel('Time (s)');ylabel('Velocity (rad/s)');grid();legend('Ref', 'Vel');
    axis([time(1), time(end), min(speed) - tolSpeed, max(speed) + tolSpeed]);
    subplot(2,1,2);plot(time, controlSignal, 'g-', ...
                        time, error, 'k--', 'LineWidth', 2);
    xlabel('Time (s)');ylabel('Volts (V)');grid();legend('U', 'Error');
    axis([time(1), time(end), min(error) - tolControl, max(error) + tolControl]);
end