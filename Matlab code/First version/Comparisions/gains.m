function [GE, GCE, GIE, GU, GCU] = gains(T)
    %% max_e = 3, T = 0.01, max_deve = max_e/T
    %% GE*max_e <= 100 o GCE*max_deve <= 100 --> Choose the most restrictive
    %% Formulas
    % GE * GU = Kp
    % GCE /GE = Kd
    % GIE /GE = Ki
    max_e = 3; max_deve = max_e / T;
    Kp = [2, 9.46];
    Kd = 1.5; 
    Ki = [0.01, 0.282];
    GE(1) = 100 / max_e;
    GCE(1) = Kd * GE;
    if GCE(1) > (100/max_deve) 
       GCE(1) = 100 / max_deve;
       GE(1) = GCE(1) / Kd;
    end
    GIE = Ki(1) * GE(1);
    GU = Kp(1) / GE(1);
    %% max_e = 30
    %% Formulas
    % GCE * GCU = Kp 
    % GE * GCU = Ki
    max_e = 30; max_deve = max_e / T;
    GE(2) = 100 / max_e;
    GCU = Ki(2) / GE(2);
    GCE(2) = Kp(2) / GCU; 
    if GCE(2) > (100/max_deve) 
       GCE(2) = 100 / max_deve;
       GCU = Kp(2) / GCE(2);
       GE(2) = Ki(2) / GCU;
    end
end