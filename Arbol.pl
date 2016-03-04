%consult('Arbol.pl').
% , == AND
% ; == OR
%nombre(A,B) == CLAUSULA(RELACION)
%nombre(A) == HECHOS
%nombre(A,B):- == SENTENCIA

% --- HOMBRES ---
hombre(jose_arcadio_buendia).
hombre(jose_arcadio).
hombre(coronel_aureliano).
hombre(aurelianos).
hombre(arcadio).
hombre(aureliano_jose).
hombre(aureliano_ll).
hombre(jose_arcadio_ll).
hombre(jose_arcadio_lll).
hombre(gaston).
hombre(mauricio_babilonia).
hombre(aureliano_babilonia).
hombre(aureliano).

% --- MUJERES ---
mujer(ursula_iguaran).
mujer(rebeca).
mujer(amaranta).
mujer(remedio_moscote).
mujer(pilar_ternera).
mujer(sta_sofia_de_la_piedad).
mujer(carmelita_montiel).
mujer(fernanda_de_carpio).
mujer(remedios_la_bella).
mujer(petra_cotes).
mujer(meme).
mujer(amaranta_ursula).

% --- PADRE ---
padre(jose_arcadio , jose_arcadio_buendia).
padre(amaranta , jose_arcadio_buendia).
padre(coronel_aureliano , jose_arcadio_buendia).
%-
padre(arcadio,jose_arcadio).
%-
padre(aureliano_jose, coronel_aureliano).
padre(aurelianos,coronel_aureliano).
%-
padre(aureliano_ll,arcadio).
padre(remedios_la_bella,arcadio).
padre(jose_arcadio_ll,arcadio).
%-
padre(meme,aureliano_ll).
padre(jose_arcadio_lll,aureliano_ll).
padre(amaranta_ursula,aureliano_ll).
%-
padre(aureliano_babilonia,mauricio_babilonia).
%-
padre(aureliano,aureliano_babilonia).

%----------------MADRE--------------------
madre(jose_arcadio,ursula_iguaran).
madre(amaranta,ursula_iguaran).
madre(coronel_aureliano,ursula_iguaran).
%-
madre(aurelianos,remedio_moscote).
%-
madre(arcadio,pilar_ternera).
madre(aureliano_jose,pilar_ternera).
%-
madre(aureliano_ll,sta_sofia_de_la_piedad).
madre(remedios_la_bella,sta_sofia_de_la_piedad).
madre(jose_arcadio_ll,sta_sofia_de_la_piedad).
%-
madre(meme,fernanda_del_carpio).
madre(jose_arcadio_lll,fernanda_del_carpio).
madre(amaranta_ursula,fernanda_del_carpio).
%-
madre(aureliano,amaranta_ursula).

% --- MATRIMONIOS ---
matrimonio(jose_arcadio , rebeca).
matrimonio(arcadio , sta_sofia_de_la_piedad).
matrimonio(aureliano_jose , carmelita_montiel).
matrimonio(jose_arcadio , rebeca).
matrimonio(coronel_aureliano , remedio_moscote).
matrimonio(aureliano_II , fernanda_del_carpio).
matrimonio(gaston,amaranta_ursula).

% --- UNIONES ---
union(jose_arcadio_buendia,ursula_iguaran).
union(mauricio_babilonia,meme).
union(aureliano_ll,petra_cotes).
union(jose_arcadio_ll,petra_cotes).

% --- HIJO LEGITIMO / HIJO NO LEGITIMO ---
hijoLegitimo(A):-
    padre(A,Papa),madre(A,Mama),matrimonio(Papa,Mama).

hijoNoLegitimo(A):-
    padre(A,Papa),madre(A,Mama),union(Papa,Mama).

% --- HERMANO / HERMANA / HERMANOS ---
hermano(A,B):- hombre(A),hermanos(A,B).
    
hermana(A,B):- mujer(A),hermanos(A,B).
    
hermanos(A,B):- hermano_paterno(A,B) ; hermano_materno(A,B).
   
hermano_paterno(A,B):- hombre(A),padre(A,Papa),padre(B,Papa),A\==B.

hermano_materno(A,B):- hombre(A),madre(A,Mama),madre(B,Mama),A\==B.

% --- ABUELO ---
abuelo(Nieto,Abuelo):- abuelo_paterno(Nieto, Abuelo);abuelo_materno(Nieto, Abuelo).
    
abuelo_paterno(Nieto,Abuelo):- padre(Nieto,Papa),padre(Papa,Abuelo).
    
abuelo_materno(Nieto,Abuelo):- madre(Nieto,Mama),padre(Mama,Abuelo).

% --- ABUELA  ---
abuela(Nieto,Abuela):-
    abuela_paterna(Nieto,Abuela);
    abuela_materna(Nieto,Abuela).

abuela_paterna(Nieto,Abuela):-
    padre(Nieto,Papa),
    madre(Papa,Abuela).

abuela_materna(Nieto,Abuela):-
    madre(Nieto,Mama),
    madre(Mama,Abuela).    

% --- TIO  / TIA ---
tio(Sobrino,Tio):-
    padre(Sobrino,Papa),
    hermano(Tio,Papa).   
    
tia(Sobrino,Tia):-
    padre(Sobrino,Papa),
    hermana(Tia,Papa).   

% --- BISABUELO  / BISABUELA ---
    bisabuelo(Bisnieto,Bisabuelo):-
    padre(Bisnieto,Papa),
    abuelo(Papa,Bisabuelo).

bisabuela(Bisnieto,Bisabuela):-
    madre(Bisnieto,Mama),
    abuela(Mama,Bisabuela).    

% --- TATARABUELO / TATARABUELA ---
tatarabuelo(Tataranieto,Tatarabuelo):-
    padre(Tataranieto,Papa),
    bisabuelo(Papa,Tatarabuelo).

tatarabuela(Tataranieto,Tatarabuela):-
    madre(Tataranieto,Mama),
    bisabuela(Mama,Tatarabuela).
