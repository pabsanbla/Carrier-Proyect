function [Kp, Ki] = cohenCoonPIVar
    %Cohen-Coon for PI
    Mp = 24.938; 
    tp = 3.1; 
    ts = 1.8;
    Kp = 1.33 / ts;
    Ki = 2 / tp;
end