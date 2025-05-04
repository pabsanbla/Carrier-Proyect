function graphs(t, values)
    %Extract the values
    reference = values(:, 1, 1); %The same in all 
    pos = values(:, 2, :);
    angle = values(:, 3, :);
    %Graphs
    figure();
    subplot(2,1,1);plot(t, reference, 'r-', ...
                        t, pos(:, 1), 'g-', ...
                        t, pos(:, 2), 'b-', ...
                        t, pos(:, 3), 'm-', 'LineWidth', 1.5);
    xlabel('Time (s)');ylabel('Position (m)');grid();legend('Ref', 'm = 5', 'm = 10', 'm = 2');
    subplot(2,1,2);plot(t, angle(:, 1), 'y-', ...
                        t, angle(:, 2), 'm-', ...
                        t, angle(:, 3), 'c-', 'LineWidth', 2);
    xlabel('Time (s)');ylabel('Angle (rad)');grid();legend('m = 5', 'm = 10', 'm = 2');
    sgtitle('PID controller');
end