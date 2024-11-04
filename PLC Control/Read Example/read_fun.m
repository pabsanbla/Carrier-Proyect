function [res] = read_fun(channel)
    global m;
    res = read(m, 'holdingregs', channel, 1, 'int16');
end
