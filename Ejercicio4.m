% Ejercicio 4

n = 0:1:200; % Muestras.

% Frecuencias.
w1 = 3*pi*0.003;
w2 = w1 + 2*pi; %Primera frecuencia alias de la fundamental f1

% Gr�ficas en mismo eje.

figure(1);  % Crea Figura 1.
grid; % Cuadr�cula.
axis([0,200,-1.1,1.1]);
title("Frecuencia  w =3pi*0.003 vs su frecuencia alias w = 2.009pi")
xlabel('n');
ylabel('cos(3*pi*f*n)');
hold on; % A�ade cambios sin borrar.

stem(n, cos(w1*n), 'g','filled'); % Grafica con frecuencia 1.
stem(n, cos(w2*n), 'b','filled'); % Grafica con frecuencia 2.

hold off;


figure(2);  % Crea Figura 2.

subplot(2,1,1); % Eje 1.
stem(n, cos(w1*n), 'g','filled'); % Grafica con frecuencia 1.
grid; % Cuadr�cula.
axis([0,200,-1.1,1.1]);
title("Frecuencia  w = 3pi*0.003")
xlabel('n');
ylabel('cos(3*pi*0.003*n)');

subplot(2,1,2); % Eje 2.
stem(n, cos(f2*n), 'b','filled'); % Grafica con frecuencia 2.
grid; % Cuadr�cula.
axis([0,200,-1.1,1.1]);
title("Frecuencia alias w = 3pi*0.003+2pi")
xlabel('n');
ylabel('cos(2.009pi*n)');