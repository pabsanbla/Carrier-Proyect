function [u] = controller(error, vel, theta)
    global m;
    error = error * 1e2;
    vel = vel * 1e2;
    theta = theta * 1e2;
    error = round(error);
    vel = round(vel);
    theta = round(theta);
    write(m, 'holdingregs', 1, [error, vel, theta], 'int16'); %write in the PLC
    pause(0.01);
    ui = read(m, 'holdingregs', 101, 1,'int16'); %read of the PLC
    u = ui / 100;
end
