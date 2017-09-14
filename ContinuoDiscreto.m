
function ContinuoDiscreto(F,fs,k)

T = 1/F;
n = 0:T/fs:T; % Muestras.

% Frecuencias.
Wd = (F*2*pi);

% Gráficas en mismo eje.

figure(1);  % Crea Figura 1.
grid; % Cuadrícula.
axis([0,T,-1.1,1.1]);
title("Señal continua vs señal en tiempo discreto con y sin alias")
xlabel('Tiempo (s)');
ylabel('sen(wt)');
hold on; % Añade cambios sin borrar.
plot(n, sin(2*pi*F*n),'m','linewidth',5); % Señal continua
stem(n, sin(Wd*n), 'r.'); % Señal en tiempo discreto
stem(n, sin(Wd*n+2*k*pi), 'r.'); % Señal en tiempo discreto con alias

hold off;

figure(2);  % Crea Figura 2.
subplot(3,1,2); % Eje 1.
stem(n, sin(Wd*n), 'm.'); % Señal en tiempo discreto
grid; % Cuadrícula.
axis([0,T,-1.1,1.1]);
title("Señal en tiempo discreto")
xlabel('Tiempo (s)');
ylabel('sen(wt)');

subplot(3,1,3); % Eje 1.
stem(n, sin(Wd*n+2*k*pi), 'm.'); % Señal en tiempo discreto con alias
grid; % Cuadrícula.
axis([0,T,-1.1,1.1]);
title("Señal en tiempo discreto con frecuencia alias")
xlabel('Tiempo (s)');
ylabel('sen(wt)');

subplot(3,1,1); % Eje 2.
plot(n, sin(2*pi*F*n),'m','linewidth',4); % Señal continua
grid; % Cuadrícula.
axis([0,T,-1.1,1.1]);
title("Señal continua")
xlabel('Tiempo (s)');
ylabel('sen(wt)');
endfunction