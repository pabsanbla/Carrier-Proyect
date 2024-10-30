function graphs(t, values)
    %Extract the values
    reference = values.signals.values(:,1);
    pos = values.signals.values(:,2);
    angle = values.signals.values(:,3);
    error = values.signals.values(:,4);
    u = values.signals.values(:,5);
    %Graphs
    figure();
    subplot(4,1,1);plot(t, reference, 'r-', ...
                        t, pos, 'b-', 'LineWidth', 1.5);
    xlabel('Time (s)');ylabel('Position (m)');grid();legend('Ref', 'Pos');
    subplot(4,1,2);plot(t, u, 'g-', 'LineWidth', 2);
    xlabel('Time (s)');ylabel('Force (N)');grid();legend('U');
    subplot(4,1,3);plot(t, error, 'k--', 'LineWidth', 2);
    xlabel('Time (s)');ylabel('Position(m)');grid();legend('Error');
    subplot(4,1,4);plot(t, angle, 'c-', 'LineWidth', 2);
    xlabel('Time (s)');ylabel('Angle (rad)');grid();legend('Theta');
    sgtitle('Fuzzy controller');
end