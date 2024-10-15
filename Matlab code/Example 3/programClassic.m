%% Program classic
function programClassic
    %Initialize variables of control
    [Kp, Ki, Kd] = cohenCoonPIDVar();
    %Adjust
    Kp = Kp + 0.1;
    Ki = Ki - 0.4;
    Kd = Kd/100;
    assignin('base', 'Kp', Kp);
    assignin('base', 'Ki', Ki);
    assignin('base', 'Kd', Kd);
    %simulation
    sim('simPIDClassical.slx');
    assignin('base', 'valuesClassic', values);
    %Graphics
    graphs(values, 'Classic Controller');
    %% ts = 0.95
    %% erp ~= 0
    %% over_os = 10%
end