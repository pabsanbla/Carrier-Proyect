function program_fuzzy
    %% Program Fuzzy
    sim('comparisions/model_sim_fuzzy.slx');
    assignin('base', 'Fuzzy', values);
    graphs(t, values, 'Fuzzy controller');
end

