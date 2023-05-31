% vacuna(farmaceutica, >=, <=)
vacuna(pfizer, 70, 100).
vacuna(otra, 60, 69).
vacuna(patria, 50, 59).
vacuna(jandj, 40, 49).
vacuna(astra, 30, 39).
vacuna(sputnik, 20, 29).
vacuna(cansino, 10, 19).
vacuna(moderna, 1, 9).

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

% Clausula que indique con cual farmaceutica
% se vacunara a una persona X

vacunar(N) :- persona(N, _, E),
    	vacuna(F, I, S), 
    	E >= I, E =< S,
    	write(N), write(" le toca "), write(F),
    	nl, fail.

ordenar :- vacuna(F, I, S),
    write("Personas que se deben vacunar con "),
    write(F), nl, persona(N, _, E), E >= I, E =< S,
    write(N), nl, fail.

