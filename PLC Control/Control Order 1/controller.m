function [u] = controller(error)
    global m;
    error = error * 100;
    error = round(error);
    write(m, 'holdingregs', 11, error); %write in the PLC
    pause(0.02);
    ui = read(m, 'holdingregs', 1, 1); %read of the controller
    u = ui / 100;
end
