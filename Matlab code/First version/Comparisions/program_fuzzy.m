function program_fuzzy(T)
    %% Program Fuzzy
    [GE, GCE, GIE, GU] = gains(T);
    assignin('base', 'GE', GE);
    assignin('base', 'GCE', GCE);
    assignin('base', 'GIE', GIE);
    assignin('base', 'GU', GU);
    sim('model_sim_fuzzy.slx');
    assignin('base', 'Fuzzy', values);
    graphs(t, values, 'Fuzzy controller');
end

