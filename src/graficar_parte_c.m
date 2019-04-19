[T U1] = Euler_SEDO('yprima_pendulo_invertido', 0, 100, [0.1 -0.1], 0.5);

[T U2] = Runge_Kutta_orden2_SEDO('yprima_pendulo_invertido', 0, 100, [0.1 -0.1], 0.5);

[T U3] = Runge_Kutta_orden4_SEDO('yprima_pendulo_invertido', 0, 100, [0.1 -0.1], 0.5);

plot(T,U1,'r',T,U2,'g',T,U3,'b');
legend('Euler','Runge-Kutta-Orden-2','Runge-Kutta-Orden-4');

