function animation(t, posAct, posRef)
% Parámetros (ajustar según tus necesidades)
cartuchoWidth = 7;  % Ancho del cartucho
cartuchoHeight = 2; % Alto del cartucho

% Crear una figura
figure(1);
axis([-25 25 -3 3]);
xlabel('Posición del cartucho (mm)');
title('Sistema de Impresión');
grid on;
hold on;

%Linea de mov del cartucho
horizontal = [-20 : 0.5 : 20];
plot(horizontal, zeros(length(horizontal), 1), 'k--', 'LineWidth', 1.5);

% Crear una línea para la referencia
refLine = xline(posRef(1), 'r--', 'LineWidth', 2);

% Crear una línea para la posición actual
posLine = xline(posAct(1), 'b-', 'LineWidth', 2);

% Crear un rectángulo para el cartucho
cartucho = rectangle('Position',[posAct(1)-cartuchoWidth/2, -cartuchoHeight/2, cartuchoWidth, cartuchoHeight], 'FaceColor', 'blue');
% Bucle de animación
for i = 2:length(t)
    % Actualizar los datos de las líneas
    set(posLine, 'Value', posAct(i));
    set(refLine, 'Value', posRef(i));

    % Actualizar la posición del rectángulo  
    set(cartucho, 'Position', [posAct(i)-cartuchoWidth/2, -cartuchoHeight/2, cartuchoWidth, cartuchoHeight]);

    % Dibujar el frame actual
    drawnow;
    
    % Pausa para controlar la velocidad de la animación
    pause(0.01);
end

end