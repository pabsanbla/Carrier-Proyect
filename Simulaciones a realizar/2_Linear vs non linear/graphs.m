function graphs(t, values)
    pos = [values(:,1), values(:,5)];
    vel = [values(:,2), values(:,6)];
    angle = [values(:,3), values(:,7)];
    d_angle = [values(:,4), values(:,8)];
    %Graphs
    figure();
    subplot(4,1,1);plot(t, pos(:,1), 'r-', ...
                        t, pos(:,2), 'b-', 'LineWidth', 1.5);
    xlabel('Time (s)');ylabel('Position (m)');grid();legend('Model', 'TF');
    subplot(4,1,2);plot(t, vel(:,1), 'r-', ...
                        t, vel(:,2), 'b-', 'LineWidth', 1.5);
    xlabel('Time (s)');ylabel('Vel (m/s)');grid();legend('Model', 'TF');
    subplot(4,1,3);plot(t, angle(:,1), 'r-', ...
                        t, angle(:,2), 'b-', 'LineWidth', 1.5);
    xlabel('Time (s)');ylabel('Angle (rad)');grid();legend('Model', 'TF');
    subplot(4,1,4);plot(t, d_angle(:,1), 'r-', ...
                        t, d_angle(:,2), 'b-', 'LineWidth', 1.5);
    xlabel('Time (s)');ylabel('Angular velocity (rad/s)');grid();legend('Model', 'TF');
    sgtitle('Model comparision');
end