% Caso 6
% ß = 0.1, e = 0.1, w = 0.1

[T Y1] = ode23('yprima_c', linspace(0,100,100), [0.01 -0.01]);
[T Y2] = ode45('yprima_c', linspace(0,100,100), [0.01 -0.01]);

plot(T, Y1, T, Y2);
legend('ODE-23', 'ODE-45');
title('ß = 0.1, e = 0.1, w = 0.1');
xlabel('t');
ylabel('theta(t)');
