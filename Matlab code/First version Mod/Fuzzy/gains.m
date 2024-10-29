function [C0, C1, Cd, Ce] = gains(T)
    %% max_e = 3, T = 0.01
    %% Formulas
    % Kp = C0 * |Cd| + C1 * |Ce|
    % Ki = C0 * |Ce|
    % Kd = C1 * |Cd|
    max_e = 3;
    Kp = [2, 9.46];
    Kd = 1.5; 
    Ki = [0.01, 0.282];
    Ce(1) = 10 / max_e;
    Cd(1) = Ce(1)*(Kp(1)-sqrt(Kp(1)^2-4*Ki(1)*Kd(1)))/2/Ki(1);
    C0(1) = Ki(1)/Ce(1);
    C1(1) = Kd(1)/Cd(1);
    %% max_e = 200
    %% Formulas
    % GCE * GCU = Kp 
    % GE / GCE = Ki
    % max_e = 30; max_deve = max_e / T;
    % GE(2) = 100 / max_e;
    % GCE(2) = Ki(2) / GE(2); 
    % if GCE(2) > (100/max_deve) 
    %    GCE(2) = 100 / max_deve;
    %    GE(2) = Ki(2) * GCE(2);
    % end
    % GCU = Kp(2) / GCE(2);
end