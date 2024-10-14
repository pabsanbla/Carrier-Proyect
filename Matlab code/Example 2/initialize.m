function initValues = initialize
    %Variables of the simulation 
    T = 0.5*3/20; %sec
    tsim = 30; %sec
    stepValue = 12; %rad/s
    upperLim = 12; %Volts
    lowerLim = -12; %Volts
    %Variables of the system
    K = 5; %adim 
    tau = 0.5; %sec
    initValues = [T, tsim, stepValue, upperLim, lowerLim, K, tau];
end