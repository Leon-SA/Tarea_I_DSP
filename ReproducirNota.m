% 'ReproducirNota(N)' es una funcion definida por el usuario mediante el fichero 'ReproducirNota.m'.
%
% Reproduce una señal de audio senoidal de 640 Hz a la frecuencia de muestreo 'fs' que se desee reproducir.
%
% El parametro 'N' indica la cantidad de muestras por periodo de la señal con la que se desea reproducir.

function ReproducirNota(N)
  f = 640; % Frecuencia de la señal en Hz.
  fs = N*f; % (muestras/segundo) = (muestras/periodo) * periodo.
  t = 0:1/fs:3; % Duracion de la señal de 3 segundos.
  y = sin(2*pi*f*t);
  sound(y, fs);