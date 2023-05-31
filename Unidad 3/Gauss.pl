gauss(0,0).
gauss(N,R):- N1 is N-1, gauss(N1,R1), R is N+R1.