%% Program fuzzy
function programFuzzy
    %simulation
    sim('simPIDFuzzy.slx');
    assignin('base', 'valuesFuzzy', values);
    %Graphics
    graphs(values, 'Fuzzy Controller');
    %% ts = 0.8
    %% erp ~= 0
    %% over_os = 12.5%
end