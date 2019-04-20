% Caso 3
% ß = 0.1, e = 0.1, w = 0.01

[T Y1] = ode23('yprima_b', linspace(0,100,100), [0.05 -0.05]);
[T Y2] = ode45('yprima_b', linspace(0,100,100), [0.05 -0.05]);

plot(T, Y1 T, Y2);
legend('ODE-23', 'ODE-45');
title('ß = 0.1, e = 0.1, w = 0.01');
xlabel('t');
ylabel('theta(t)');