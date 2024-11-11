function init
%% Initialization
    global m;
    m = modbus('tcpip', '127.0.0.1', 502);
end