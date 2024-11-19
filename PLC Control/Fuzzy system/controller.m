function [u] = controller(error, vel, theta)
    global m;
    error = round(error * 1e3);
    vel = round(vel * 1e3);
    theta = round(theta * 1e3);
    write(m, 'holdingregs', 501, [error, vel, theta], 'int16'); %write in the PLC
    pause(0.05);
    u = read(m, 'holdingregs', 504, 1, 'int16') / 1e2; %read fro the PLC
end
