function [Kp, Ki, Kd] = cohenCoonPIDVar
    %Cohen-Coon for PI
    tp = 3.1; 
    ts = 1.8;
    Kp = 0.6 / ts;
    Ki = 3.33 / tp;
    Kd = 4 * ts/tp^2;
end