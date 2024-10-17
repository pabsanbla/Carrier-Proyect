function graphs(i, j, t, values)
    figure();
    force = [5, 1, 0.2];
    L = [0.5, 0.3, 0.2];
    m = [1.5, 0.8, 0.3];
    if i == 1
        mesg = sprintf('Force = %.1f N', force(j));
        subplot(1,2,1);plot(t, values(:, 1), 'r-', 'LineWidth', 2);legend(mesg);
        subplot(1,2,2);plot(t, values(:, 3), 'k-', 'LineWidth', 1.5);legend(mesg);
        sgtitle('Force changes');
    elseif i == 2
        mesg = sprintf('L = %.1f N', force(j));
        subplot(1,2,1);plot(t, values(:, 1), 'r-', 'LineWidth', 2);legend(mesg);
        subplot(1,2,2);plot(t, values(:, 3), 'k-', 'LineWidth', 1.5);legend(mesg);
        sgtitle('Rope changes');
    else
        mesg = sprintf('m = %.1f N', force(j));
        subplot(1,2,1);plot(t, values(:, 1), 'r-', 'LineWidth', 2);legend(mesg);
        subplot(1,2,2);plot(t, values(:, 3), 'k-', 'LineWidth', 1.5);legend(mesg);
        sgtitle('Mass changes');
    end
end