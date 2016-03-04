% 1.- Todos los caballeros de la mesa redodnea son leales a Arturo.
% 2.- Arturo esta casado con Guinevere
% 3.- Lancelot es un caballero de la mesa redonda y esta en una relacion con Guinevere
% 4.- Toda mujer que estando casada tiene una relacion con otro hombre no es leal a su marido
% 5.- Los caballeros de la mesa redonda que vencen a todos sus enemigos se convierten en campeones de Arturo.

casado('Arturo','Guinivere').
mesaRedonda('caballeros').
caballero('Lancelot').
relacion('Lancelot','Guinivere').
vencen('caballeros','enemigos').

leal(Nombre):-
    caballero(Nombre);
    casado('Arturo',Nombre),
    relacion('Arturo',Nombre)
    .