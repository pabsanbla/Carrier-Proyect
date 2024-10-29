function [C0, C1, Cd, Ce] = gains(T)
    %% max_e = 3, T = 0.01
    %% Formulas
    % Kp = C0 * |Cd| + C1 * |Ce|
    % Ki = C0 * |Ce|
    % Kd = C1 * |Cd|
    max_e = 3;
    Kp = [2, 9.46];
    Kd = [1.5, 1e-10]; 
    Ki = [0.01, 0.282];
    Ce(1) = 10 / max_e;
    Cd(1) = Ce(1)*(Kp(1)-sqrt(Kp(1)^2-4*Ki(1)*Kd(1)))/2/Ki(1);
    C0(1) = Ki(1)/Ce(1);
    C1(1) = Kd(1)/Cd(1);
    %% max_e = 5
    %% Formulas
    % Kp = C0 * |Cd| + C1 * |Ce|
    % Ki = C0 * |Ce|
    % Kd = C1 * |Cd|
    max_e = 22;
    Ce(2) = 10 / max_e;
    C0(2) = Ki(2)/Ce(2);
    Cd(2) = Ce(2)*Kp(2)/Ki(2);
    C1(2) = 0;
end