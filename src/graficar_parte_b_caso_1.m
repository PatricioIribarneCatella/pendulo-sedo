%
% Grafica los casos para la parte B con
% - ODE23: 'Runge-Kutta de orden 2 y 3' y 
% - ODE45: 'Runge-Kutta de orden 4 y 5'
%

% Caso 1
% ß = 0.1, e = 0.1, w = 0.05

[T Y1] = ode23('yprima_a', linspace(0,100,100), [0.1 -0.1]);
[T Y2] = ode45('yprima_a', linspace(0,100,100), [0.1 -0.1]);

plot(T, Y1, T, Y2);
legend('ODE-23', 'ODE-45');
title('ß = 0.1, e = 0.1, w = 0.05');
xlabel('t');
ylabel('theta(t)');
