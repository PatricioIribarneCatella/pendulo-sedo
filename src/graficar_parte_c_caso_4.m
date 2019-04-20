%
% Grafica los casos para la parte B con
% - Euler-SEDO: 'método de Euler' 
% - Runge-Kutta-SEDO-2: 'Runge-Kutta de orden 2' 
% - Runge-Kutta-SEDO-4: 'Runge-Kutta de orden 4'
%

% Caso 4
% ß = 0.1, e = 0.1, w = 0.01

[T U1] = Euler_SEDO('yprima_b', 0, 100, [0.1 -0.1], 0.5);

[T U2] = Runge_Kutta_orden2_SEDO('yprima_b', 0, 100, [0.1 -0.1], 0.5);

[T U3] = Runge_Kutta_orden4_SEDO('yprima_b', 0, 100, [0.1 -0.1], 0.5);

plot(T,U1,'r',T,U2,'g',T,U3,'b');
legend('Euler','Runge-Kutta-Orden-2','Runge-Kutta-Orden-4');

