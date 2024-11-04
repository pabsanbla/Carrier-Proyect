function [u] = controller(error)
    global m;
    error = error * 1e2;
    error = round(error);
    write(m, 'holdingregs', 1, error, 'int16'); %write in the PLC
    pause(0.01);
    ui = read(m, 'holdingregs', 101, 1,'int16'); %read of the controller
    u = ui / 100;
end
