
function ReproducirNota()
  fm = 44100;
  t = 0:1/fm:5; % 5 segundos de sonido.
  f = 640; % Frecuencia del sonido en Hz.
  y = sin(2*pi*f*t);
  sound(y, fm);