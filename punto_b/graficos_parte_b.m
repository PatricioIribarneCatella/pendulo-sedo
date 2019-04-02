# En yprima_pendulo_invertido usamos i = 1

ode23(@yprima_pendulo_invertido, linspace(0,100,100), [0.1 -0.1]);

# En yprima_pendulo_invertido usamos i = 2

ode23(@yprima_pendulo_invertido, linspace(0,100,100), [0.2 -0.2]);
ode23(@yprima_pendulo_invertido, linspace(0,100,100), [0.05 -0.05]);
ode23(@yprima_pendulo_invertido, linspace(0,100,100), [0.1 -0.1]);

# En yprima_pendulo_invertido usamos i = 5

ode23(@yprima_pendulo_invertido, linspace(0,100,100), [0.1 -0.1]);
ode23(@yprima_pendulo_invertido, linspace(0,100,100), [0.01 -0.01]);

# En yprima_pendulo_invertido usamos i = 1

ode45(@yprima_pendulo_invertido, linspace(0,100,100), [0.1 -0.1]);

# En yprima_pendulo_invertido usamos i = 2

ode45(@yprima_pendulo_invertido, linspace(0,100,100), [0.2 -0.2]);
ode45(@yprima_pendulo_invertido, linspace(0,100,100), [0.05 -0.05]);
ode45(@yprima_pendulo_invertido, linspace(0,100,100), [0.1 -0.1]);

# En yprima_pendulo_invertido usamos i = 5

ode45(@yprima_pendulo_invertido, linspace(0,100,100), [0.1 -0.1]);
ode45(@yprima_pendulo_invertido, linspace(0,100,100), [0.01 -0.01]);

