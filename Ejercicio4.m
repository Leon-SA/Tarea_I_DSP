% Ejercicio 4

n = 0:1:200; % Muestras.

% Frecuencias.
f1 = 0.003;
f2 = f1 + 1; %Primera frecuencia alias de la fundamental f1

% Gr�ficas en mismo eje.

figure(1);  % Crea Figura 1.
grid; % Cuadr�cula.
axis([0,200,-1.1,1.1]);
title("Frecuencia  f = 0.003 vs su frecuencia alias f = 1.003")
xlabel('n');
ylabel('cos(2*pi*f*n)');
hold on; % A�ade cambios sin borrar.

stem(n, cos(2*pi*f1*n), 'g','filled'); % Grafica con frecuencia 1.
stem(n, cos(2*pi*f2*n), 'b','filled'); % Grafica con frecuencia 2.

hold off;


figure(2);  % Crea Figura 2.

subplot(2,1,1); % Eje 1.
stem(n, cos(2*pi*f1*n), 'g','filled'); % Grafica con frecuencia 1.
grid; % Cuadr�cula.
axis([0,200,-1.1,1.1]);
title("Frecuencia  f = 0.003")
xlabel('n');
ylabel('cos(2pi*0.003*n)');

subplot(2,1,2); % Eje 2.
stem(n, cos(2*pi*f2*n), 'b','filled'); % Grafica con frecuencia 2.
grid; % Cuadr�cula.
axis([0,200,-1.1,1.1]);
title("Frecuencia alias f = 1.003")
xlabel('n');
ylabel('cos(2pi*1.003*n)');