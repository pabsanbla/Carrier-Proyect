function graphics(t, posAct, posRef, voltaje)
%Regiones
posicion = [-inf, inf; ...
            -20,  20];
voltage = [-inf, inf;...
           -12,  12];
%Graficas de muestra 
figure(2);
%Plot de comparativa
subplot(2,1,1);plot(t, posAct, 'b', 'LineWidth', 2);hold on;
plot(t, posRef, 'g', 'LineWidth', 1.5); hold off;
xlabel('Tiempo (s)'); ylabel('Posición (mm)'); grid(); 
yregion(posicion, 'EdgeColor', 'k', 'LineWidth', 2);
legend('Posicion actual', 'Posicion referencia');
axis([t(1) t(end) -25 25]);
%Plot de actuador
subplot(2,1,2);plot(t, voltaje, 'r', 'LineWidth', 2);
xlabel('Tiempo (s)'); ylabel('Voltaje (V)'); grid(); 
yregion(voltage, 'EdgeColor', 'k', 'LineWidth', 2);
legend('Voltaje');
axis([t(1) t(end) -15 15]);
end