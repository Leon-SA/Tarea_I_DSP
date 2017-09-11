% 'VerFunciones(N)' es una funcion definida por el usuario mediante el fichero 'VerFunciones.m'.
%
% Grafica, en una sola figura y en sus respectivos ejes coordenados, las siguientes 4 funciones:
% - cos(3*pi*0.01*n)
% - cos(3*pi*0.02*n)
% - cos(3*pi*0.05*n)
% - cos(3*pi*0.1*n)
%
% El parametro 'N' indica la ultima muestra que se grafica de las funciones; es decir, n pertenece a [0,N].

function verFunciones(N)

n = 0:1:N; % Muestras.

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
axis([-5,N+5,-1.1,1.1]);
xlabel('n');
ylabel('cos(3*pi*0.01*n)');

subplot(2,2,2); % Eje 2.
stem(n, cos(3*pi*f2*n), 'bo'); % Grafica con frecuencia 2.
grid; % Cuadrícula.
axis([-5,N+5,-1.1,1.1]);
xlabel('n');
ylabel('cos(3*pi*0.02*n)');

subplot(2,2,3); % Eje 3.
stem(n, cos(3*pi*f3*n), 'k*'); % Grafica con frecuencia 3.
grid; % Cuadrícula.
axis([-5,N+5,-1.1,1.1]);
xlabel('n');
ylabel('cos(3*pi*0.05*n)');

subplot(2,2,4);  % Eje 4.
stem(n, cos(3*pi*f4*n), 'gd'); % Grafica con frecuencia 4.
grid; % Cuadrícula.
axis([-5,N+5,-1.1,1.1]);
xlabel('n');
ylabel('cos(3*pi*0.1*n)');