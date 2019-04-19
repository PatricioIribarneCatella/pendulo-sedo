function [T U] = Runge_Kutta_orden4_SEDO(f, a, b, u0, h)

%ENTRADA
	% f nombre de la funcion
	% a y b extremos izquierdo y derecho del intervalo
	% h tamaño de paso
	% u0 condicion inicial

% SALIDA
	% T vector de las abcisas 
	% U vector de las ordenadas de la función y su derivada

	M = (b - a) / h;
	N = length(u0);

	T = zeros(M + 1, 1);
	U = zeros(M + 1, N);

	K = zeros(1, N);
	Q = zeros(1, N);
	W = zeros(1, N);
	R = zeros(1, N);

	T = a:h:b;
	T = T';

	for i = 1:N
		U(1, i) = u0(i);
	end

	for j = 1:M
		K(1,:) = h * feval(f, T(j), U(j,:));
		Q(1,:) = h * feval(f, T(j) + 0.5 * h, U(j,:) + 0.5 * K(1,:));
		W(1,:) = h * feval(f, T(j) + 0.5 * h, U(j,:) + 0.5 * Q(1,:));
		R(1,:) = h * feval(f, T(j) + h, U(j,:) + W(1,:));

		U(j+1,:) = U(j,:) + (1/6) * (K(1,:) + 2 * Q(1,:) + 2 * W(1,:) + R(1,:));
	end

