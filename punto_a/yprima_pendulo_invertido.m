function [f] = yprima_pendulo_invertido(t, x)
	
	C = [0.1 0.1 0.05;
	     0.1 0.1 0.01;
	     0.1 0.1 0.01;
	     0.1 0.1 0.01;
	     0.1 0.1 0.1;
	     0.1 0.1 0.1];

	i = 1;

	f(1) = x(2);
	f(2) = (C(i, 3)^2 - C(i, 2) * cos(t)) * sin(x(1)) - C(i, 1) * x(2);
end
