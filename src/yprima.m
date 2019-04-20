
function [f] = yprima(t, x, id)
	
	C = [0.1 0.1 0.05;
	     0.1 0.1 0.01;
	     0.1 0.1 0.1];

	f(1) = x(2);
	f(2) = (C(id,3)^2 - C(id,2) * cos(t)) * sin(x(1)) - C(id,1) * x(2);
end

