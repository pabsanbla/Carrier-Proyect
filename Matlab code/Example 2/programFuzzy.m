%% Program 
function programFuzzy
    %simulation
    sim('simPIFuzzy.slx');
    assignin('base', 'valuesFuzzy', values);
    %Graphics
    graphs(values, 'Fuzzy Controller');
    %% ts = 4 
    %% erp ~= 0
    %% over_osc = 27%
end