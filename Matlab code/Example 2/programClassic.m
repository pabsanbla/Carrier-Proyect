%% Program 
function programClassic
    %Initialize variables of control
    [Kp, Ki] = cohenCoonPIVar();
    %Adjust
    Kp = Kp/2;
    Ki = Ki;
    assignin('base', 'Kp', Kp);
    assignin('base', 'Ki', Ki);
    %simulation
    sim('simPIClassical.slx');
    assignin('base', 'valuesClassic', values);
    %Graphics
    graphs(values, 'Classic Controller');
    %% ts = 0.65 
    %% erp ~= 0
    %% over_osc = 11%
end