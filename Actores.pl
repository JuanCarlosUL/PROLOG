%1.- Todos los actores son famosos.
%2.- Algunos padres son responsables
%3.-Todos los miembros son padres o son maestros.
%4.- Algunos politicos son incompetentes o son corruptos
%5.- Las manzanas y los platanos son nutritivos.


actor('paco').
padre('jose').
maestro('luis').
incompetente('Enrique').
corrupto('Enrique').
fruta('Manzana').
fruta('Platano').

famosos(Nombre):-
    actor(Nombre).

responsable(Nombre):-
    padre(Nombre).
    
miembros(Nombre):-
    padre(Nombre);
    maestro(Nombre).
    
politico(Nombre):-    
    incompetente(Nombre);
    corrupto(Nombre);

nutritivos(A,B);-
    fruta(A),fruta(B).

