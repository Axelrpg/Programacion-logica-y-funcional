persona(juan, h, 1).
persona(maricarmen, m, 2).
persona(iovany, h, 3).
persona(ignacio, h, 4).
persona(orlando, h, 5).
persona(jose, h, 6).
persona(josue, h, 7).
persona(salvador, h, 8).
persona(antonio, h, 9).
persona(angel, h, 10).
persona(johan, h, 11).
persona(octavio, h, 12).
persona(axel, h, 13).
persona(gustavo, h, 14).
persona(ricardo, h, 15).
persona(daniela, m, 16).
persona(carlos, h, 17).

personas :- persona(N, S, E), 
    		write(N), write(" es "), write(S), 
    		write(" y tiene "), write(E),
    		write(" años. "), nl, fail.

existe(X) :- persona(X, _, _), 
    		write("Si existe el registro"); 
    		write("No existe el registro").

mayores :- persona(N, _, E), E >= 18,
    	write(N), write(" tiene "),
    	write(E), write(" años."), nl, fail.

menores :- persona(N, _, E), E < 18,
    	write(N), write(" tiene "),
    	write(E), write(" años."), nl, fail.

mujeres :- persona(N, S, _), S = m,
    	write(N), nl, fail.

hombres :- persona(N, S, _), S = h,
    	write(N), nl, fail.

contar(S) :- findAll(S, persona(_, S, _), L),
    	lenght(L, N), write(N).