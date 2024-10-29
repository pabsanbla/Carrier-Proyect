function program_classic
    %% Program PID
    Kp = [2, 9.46];
    Ki = [0.01, 0.282];
    Kd = 1.5;
    assignin('base', 'Kp', Kp);
    assignin('base', 'Ki', Ki);
    assignin('base', 'Kd', Kd);
    sim('model_sim_classic.slx');
    assignin('base', 'PID', values);
    assignin('base', 't', t);
    graphs(t, values, 'PID controller');
end