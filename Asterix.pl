%Axterix es un galo.
%Los romanos que son amigos de algun galo odian a Cesar.
%Axterix ayudo a Marco.
%Marco es amigo de quien le ayuda.
%Quien odia a algun romano lucha contra el.
%Marco es un romano.

romano(marco).
romano(cesar).
galo(axterix).
ayudo(axterix,marco).

amigo(Ayudante,Romano):-   
    ayudo(Ayudante,Romano),
    romano(Romano),
    galo(Ayudante),
    Ayudante\==Romano.

odia(Romano,Otro):-
    galo(Ungalo),
    romano(Romano),
    ayuda(Ungalo,Romano),
    romano(Otro),
    Romano\==Otro.
    
lucha(A,Unromano):-
    romano(Unromano),
    odia(A,UnRomano),
    A\==Unromano.    