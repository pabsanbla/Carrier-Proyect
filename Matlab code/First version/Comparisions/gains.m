function [GE, GCE, GIE, GU] = gains(T)
    %% max_e = 3, T = 0.01, max_deve = max_e/T
    %% GE*max_e <= 100 o GCE*max_deve <= 100 --> Choose the most restrictive
    %% Formulas
    % GE * GU = Kp
    % GCE /GE = Kd
    % GIE /GE = Ki
    max_e = 3; max_deve = max_e / T;
    Kp = 2; Kd = 1.5; Ki = 0.01;
    GE = 100 / max_e;
    GCE = Kd * GE;
    if GCE > (100/max_deve) 
       GCE = 100 / max_deve;
       GE = GCE / Kd;
    end
    GIE = Ki * GE;
    GU = Kp / GE;
end