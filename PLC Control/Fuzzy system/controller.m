function [u] = controller(error, vel, theta)
    global m;
    error = error * 1e2;
    vel = vel * 1e2;
    theta = theta * 1e2;
    error = round(error);
    vel = round(vel);
    theta = round(theta);
    write(m, 'holdingregs', 501, [error, vel, theta], 'int16'); %write in the PLC
    pause(0.1);
    u = read(m, 'holdingregs', 504, 1,'int16'); %read of the PLC
end
