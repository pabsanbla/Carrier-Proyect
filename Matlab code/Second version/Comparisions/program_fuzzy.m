function program_fuzzy
    %% Program Fuzzy
    [C0, C1, Cd, Ce] = gains;
    assignin('base', 'C0', C0);
    assignin('base', 'C1', C1);
    assignin('base', 'Cd', Cd);
    assignin('base', 'Ce', Ce);
    sim('comparisions/model_sim_fuzzy.slx');
    assignin('base', 'Fuzzy', values);
    graphs(t, values, 'Fuzzy controller');
end

