%Todos los coyotes persiguen a algun correcaminos.
%Algunos correcaminos son inteligentes.
%Los coyotes que persiguen a correcaminos inteligentes no los atrapas.
%Cualquier coyote que persigue a algun correcaminos pero no lo atrapa esta hambriento.
%Pepe es un coyote y Ana una correcaminos y ambos son inteligentes.
%Pepe persigue al correcaminos Ana.

correcaminos(ana).
coyote(pepe).

inteligente(ana).
inteligente(pepe).

persigue(pepe,ana).

noatrapa(Coyote,Correcaminos):-
    coyote(Coyote),
    correcaminos(Correcaminos),
    inteligente(Correcaminos),
    persigue(Coyote,Correcaminos).

hambriento(Coyote):-
    noatrapa(Coyote,_Correcaminos).