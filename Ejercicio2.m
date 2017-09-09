% Ejercicio 2

n = 0:1:75; % Muestras.

% Frecuencias.
f1 = 0.01;
f2 = 0.02;
f3 = 0.05;
f4 = 0.1;

% Gráficas en ejes separados.

figure(1);  % Crea Figura 1.

subplot(2,2,1); % Eje 1.
stem(n, cos(3*pi*f1*n), 'r.'); % Grafica con frecuencia 1.
grid; % Cuadrícula.
axis([-5,80,-1.1,1.1]);
xlabel('n');
ylabel('cos(3*pi*0.01*n)');

subplot(2,2,2); % Eje 2.
stem(n, cos(3*pi*f2*n), 'bo'); % Grafica con frecuencia 2.
grid; % Cuadrícula.
axis([-5,80,-1.1,1.1]);
xlabel('n');
ylabel('cos(3*pi*0.02*n)');

subplot(2,2,3); % Eje 3.
stem(n, cos(3*pi*f3*n), 'k*'); % Grafica con frecuencia 3.
grid; % Cuadrícula.
axis([-5,80,-1.1,1.1]);
xlabel('n');
ylabel('cos(3*pi*0.05*n)');

subplot(2,2,4); % Eje 4.
stem(n, cos(3*pi*f4*n), 'gd'); % Grafica con frecuencia 4.
grid; % Cuadrícula.
axis([-5,80,-1.1,1.1]);
xlabel('n');
ylabel('cos(3*pi*0.1*n)');

% Gráficas en mismo eje.

figure(2);  % Crea Figura 2.
grid; % Cuadrícula.
axis([-5,80,-1.1,1.1]);
xlabel('n');
ylabel('cos(3*pi*f*n)');
hold on; % Añade cambios sin borrar.

stem(n, cos(3*pi*f1*n), 'r.'); % Grafica con frecuencia 1.
stem(n, cos(3*pi*f2*n), 'b.'); % Grafica con frecuencia 2.
stem(n, cos(3*pi*f3*n), 'k.'); % Grafica con frecuencia 3.
stem(n, cos(3*pi*f4*n), 'g.'); % Grafica con frecuencia 4.
hold off;