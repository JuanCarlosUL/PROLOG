% Manejo de recetas o menu

% puede_cocinar( Comida )
% necesita_ingrediente( Comida , Ingredientes )
% 
% X ingrediente indicar cantidad
% La cantidad existente debe ser
% suficiente para cocinar el producto
% 
% Indicar tipo de Comida 7 Tipos
% Mexicana
% Italiana
% Japonesa
% 
% Indicar tipo de personas 5 Tipos
% Vegetarianos
% Deportistas
% Baja en grasa
% Diabeticos
% 
% Precio de la Comida
% Comida similar -> 35
% Acompañamientos -> 35
% Bebida -> 35 -> 14 bebidas diferentes
% Pedido
% 

% ingrediente( Ingrediente ).
% comidaIngrediente( Comida , Ingrediente , Cantidad ).
% ingredienteCantidad( Nombre , Cantidad ).

% tipoComida( TipoComida ).
% tipoPersona( TipoPersona ).

% comida( Comida ).
% comidaCantidad( Comida , Cantidad ).
% comidaTipos( Comida , TipoComida , TipoPersona ).
% comidaPrecio( Comida , Precio ).

% acompañamiento( Comida , Acompañamiento ).
% acompañamientoPrecio( Acompañamiento , Precio ).

% bebida( Bebida ).
% bebidaComida( Comida , Bebida ).
% bebidaPrecio( Bebida , Precio ).

% puedeCocinar( Comida , Cantidad)
% comidaSimilar( Comida ):-
% bebidaAcompañar( Comida , Bebida ):-
% comprarComida( Comida , Dinero ):-
% comprarAcompañamiento( Acompañamiento , Dinero ):-
% comprarBebida( Bebida , Dinero ):-

% DYNAMIC
:- dynamic ingredienteCantidad/2.

% *****************************************************
% TIPO COMIDA
% AMERICANA
tipoComida( 'Mexicana' ).
tipoComida( 'Japonesa' ).
tipoComida( 'Italiana' ).
tipoComida( 'Americana' ).
tipoComida( 'Chino' ).

% *****************************************************
% TIPO PERSONAS
tipoPersona( 'Otro' ).
tipoPersona( 'Diabetico' ).
tipoPersona( 'Dietetica' ).
tipoPersona( 'Vegetariano' ).
tipoPersona( 'Deportista' ).

% *****************************************************
% INGREDIENTES
ingrediente( 'Tortilla' ).
ingrediente( 'Carne' ).
ingrediente( 'Pan' ).
ingrediente( 'Mayonesa' ).
ingrediente( 'Catsup' ).
ingrediente( 'Tostada' ).
ingrediente( 'Lechuga' ).
ingrediente( 'Queso' ).
ingrediente( 'Atun' ).
ingrediente( 'Tomate' ).
ingrediente( 'Cebolla' ).
ingrediente( 'Pollo' ).
ingrediente( 'Papa' ).
ingrediente( 'Camaron' ).
ingrediente( 'Arroz' ).
ingrediente( 'Salmon' ).
ingrediente( 'Pescado' ).
ingrediente( 'Aguacate' ).
ingrediente( 'Aceituna Negra' ).
ingrediente( 'Fideo' ).
ingrediente( 'Masa' ).
ingrediente( 'Chile' ).

ingredienteCantidad( 'Tortilla' , 220 ).
ingredienteCantidad( 'Carne' , 400 ).
ingredienteCantidad( 'Pan' , 200 ).
ingredienteCantidad( 'Mayonesa' , 500 ).
ingredienteCantidad( 'Catsup' , 400 ).
ingredienteCantidad( 'Lechuga' , 202 ).
ingredienteCantidad( 'Queso' , 320 ).
ingredienteCantidad( 'Atun' , 203 ).
ingredienteCantidad( 'Tomate' , 212 ).
ingredienteCantidad( 'Cebolla' , 304 ).
ingredienteCantidad( 'Pollo' , 330 ).
ingredienteCantidad( 'Papa' , 220 ).
ingredienteCantidad( 'Camaron' ,400 ).
ingredienteCantidad( 'Arroz' ,300 ).
ingredienteCantidad( 'Salmon' ,300).
ingredienteCantidad( 'Pescado' ,200).
ingredienteCantidad( 'Aguacate',200).
ingredienteCantidad( 'Aceituna Negra',200).
ingredienteCantidad( 'Fideo',200).
ingredienteCantidad( 'Masa',200).
ingredienteCantidad( 'Chile',100).
ingredienteCantidad( 'Salchicha',300).

comidaIngrediente( 'Tacos' , 'Tortilla' ).
comidaIngrediente( 'Tacos' , 'Carne' ).

comidaIngrediente( 'Tortas' , 'Pan' ).
comidaIngrediente( 'Tortas' , 'Carne' ).
comidaIngrediente( 'Tortas' , 'Mayonesa' ).

comidaIngrediente( 'Tostadas Naturales' , 'Tostada' ).
comidaIngrediente( 'Tostadas Naturales' , 'Lechuga' ).
comidaIngrediente( 'Tostadas Naturales' , 'Queso' ).

comidaIngrediente( 'Ensalada De Atun' , 'Atun' ).
comidaIngrediente( 'Ensalada De Atun' , 'Tomate' ).
comidaIngrediente( 'Ensalada De Atun' , 'Cebolla' ).

comidaIngrediente( 'Caldo' , 'Pollo' ).
comidaIngrediente( 'Caldo' , 'Cebolla' ).
comidaIngrediente( 'Caldo' , 'Tomate' ).

comidaIngrediente( 'Pure De Papa' , 'Papa' ).

comidaIngrediente( 'Sushi' , 'Atun').
comidaIngrediente( 'Sushi' , 'Camaron').
comidaIngrediente( 'Sushi' , 'Arroz').

comidaIngrediente( 'Teriyaki' , 'Arroz' ).
comidaIngrediente( 'Teriyaki' , 'Camaron' ).
comidaIngrediente( 'Teriyaki' , 'Pollo' ).
comidaIngrediente( 'Teriyaki' , 'Carne' ).

comidaIngrediente( 'Sashimi', 'Carne' ).
comidaIngrediente( 'Sashimi', 'Arroz' ).
comidaIngrediente( 'Sashimi', 'Salmon' ).

comidaIngrediente( 'Tempura' , 'Pescado' ).
comidaIngrediente( 'Tempura' , 'Arroz' ).
comidaIngrediente( 'Tempura' , 'Aguacate' ).

comidaIngrediente( 'Temaki' , 'Arroz' ).
comidaIngrediente( 'Temaki' , 'Aguacate' ).
comidaIngrediente( 'Temaki' , 'Salmon' ).

comidaIngrediente('Spaghetti Alla Puttanesca', 'Aceituna Negra').
comidaIngrediente('Spaghetti Alla Puttanesca', 'Fideo').
comidaIngrediente('Spaghetti Alla Puttanesca', 'Carne').

comidaIngrediente('Pansotti','Masa').
comidaIngrediente('Pansotti','Carne').
comidaIngrediente('Pansotti','Tomate').

comidaIngrediente('Risotto Mare E Monti' , 'Arroz').
comidaIngrediente('Risotto Mare E Monti' , 'Camaron').
comidaIngrediente('Risotto Mare E Monti' , 'Aguacate').

comidaIngrediente('Paglia E Fieno' , 'Fideo').
comidaIngrediente('Paglia E Fieno' , 'Carne').
comidaIngrediente('Paglia E Fieno' , 'Queso').

comidaIngrediente('Fetucini Al Futti Di Mare' , 'Queso').
comidaIngrediente('Fetucini Al Futti Di Mare' , 'Fideo').
comidaIngrediente('Fetucini Al Futti Di Mare' , 'Camaron').

comidaIngrediente('Fajita','Tortilla').
comidaIngrediente('Fajita','Pollo').
comidaIngrediente('Fajita','Chile').

comidaIngrediente('Hamburguesa','Carne').
comidaIngrediente('Hamburguesa','Pan').
comidaIngrediente('Hamburguesa','Tomate').

comidaIngrediente('Hotdog','Salchicha').
comidaIngrediente('Hotdog','Pan').
comidaIngrediente('Hotdog','Tomate').

comidaIngrediente('Sandwich','Pan').
comidaIngrediente('Sandwich','Pollo').
comidaIngrediente('Sandwich','Mayonesa').

comidaIngrediente('Chuletas BBQ','Carne').
comidaIngrediente('Chuletas BBQ','Tomate').
comidaIngrediente('Chuletas BBQ','Tortilla').

comidaIngrediente('Chun Kun','Pollo').
comidaIngrediente('Chun Kun','Carne').
comidaIngrediente('Chun Kun','Masa').

comidaIngrediente('Fideos Chinos','Carne').
comidaIngrediente('Fideos Chinos','Fideo').
comidaIngrediente('Fideos Chinos','Pollo').

comidaIngrediente('Arroz Frito','Arroz').
comidaIngrediente('Arroz Frito','Carne').
comidaIngrediente('Arroz Frito','Pollo').

comidaIngrediente( 'Chop Suey' , 'Fideo' ).
comidaIngrediente( 'Chop Suey' , 'Pollo' ).
comidaIngrediente( 'Chop Suey' , 'Tomate' ).

comidaIngrediente( 'Chow Mein' , 'Fideo' ).
comidaIngrediente( 'Chow Mein' , 'Carne' ).
comidaIngrediente( 'Chow Mein' , 'Pollo' ).
% *****************************************************
% COMIDAS
% MEXICANA
comida( 'Tacos' ).
comida( 'Tostadas Naturales').
comida('Ensalada De Atun').
comida('Caldo').
comida('Pure De Papa').

%JAPONESA
comida( 'Sushi' ).
comida( 'Teriyaki' ).
comida( 'Sashimi' ).
comida( 'Tempura' ).
comida( 'Temaki' ).

%ITALIANA
comida( 'Spaghetti Alla Puttanesca' ).
comida( 'Pansotti' ).
comida( 'Risotto Mare E Monti' ).
comida( 'Paglia E Fieno' ).
comida( 'Fetucini Al Futti Di Mare' ).

%AMERICANA
comida( 'Fajita' ).
comida( 'Hamburguesa' ).
comida( 'Hotdog' ).
comida( 'Sandwich' ).
comida( 'Chuletas BBQ' ).

%CHINA
comida( 'Chun Kun' ).
comida( 'Fideos Chinos' ).
comida( 'Arroz Frito' ).
comida( 'Chop Suey' ).
comida( 'Chow Mein' ).
%---------------------------------------
comidaTipos('Tacos' , 'Mexicana' , 'Otro' ).
comidaTipos('Tostadas Naturales' , 'Mexicana' , 'Vegetariano' ).
comidaTipos('Ensalada De Atun' , 'Mexicana' , 'Dietetica' ).
comidaTipos('Caldo' , 'Mexicana' , 'Diabetico' ).
comidaTipos('Pure De Papa' , 'Mexicana' , 'Deportista' ).

comidaTipos('Sushi','Japonesa','Otro').
comidaTipos('Teriyaki','Japonesa','Diabetico').
comidaTipos('Sashimi','Japonesa','Dietetica').
comidaTipos('Tempura','Japonesa','Deportista').
comidaTipos('Temaki','Japonesa','Vegetariano').

comidaTipos('Spaghetti Alla Puttanesca','Italiana','Otro').
comidaTipos('Pansotti','Italiana','Diabetico').
comidaTipos('Risotto Mare E Monti','Italiana','Dietetica').
comidaTipos('Fetucini Al Futti Di Mare','Italiana','Deportista').
comidaTipos('Paglia E Fieno','Italiana','Vegetariano').

comidaTipos('Fajita','Americana','Otro').
comidaTipos('Hamburguesa','Americana','Diabetico').
comidaTipos('Hotdog','Americana','Dietetica').
comidaTipos('Sandwich','Americana','Deportista').
comidaTipos('Chuletas BBQ','Americana','Vegetariano').

comidaTipos('Chun Kun','China','Otro').
comidaTipos('Fideos Chinos','China','Diabetico').
comidaTipos('Arroz Frito','China','Dietetica').
comidaTipos('Chop Suey','China','Deportista').
comidaTipos('Chow Mein','China','Vegetariano').

comidaPrecio( 'Tacos' , 18 ).
comidaPrecio( 'Tostadas Naturales' , 15 ).
comidaPrecio( 'Ensalada De Atun' , 30 ).
comidaPrecio( 'Caldo' , 35 ).
comidaPrecio( 'Pure De Papa' , 30 ).

comidaPrecio( 'Sushi',50).
comidaPrecio( 'Teriyaki',55).
comidaPrecio( 'Sashimi',54).
comidaPrecio( 'Tempura',53).
comidaPrecio( 'Temaki',55).

comidaPrecio( 'Spaghetti Alla Puttanesca',52).
comidaPrecio( 'Pansotti',65).
comidaPrecio( 'Risotto Mare E Monti',60).
comidaPrecio( 'Paglia E Fieno',70).
comidaPrecio( 'Fetucini Al Futti Di Mare',77).

comidaPrecio( 'Fajita',50).
comidaPrecio( 'Hamburguesa',30).
comidaPrecio( 'Hotdog',20).
comidaPrecio( 'Sandwich',20).
comidaPrecio( 'Chuletas BBQ',55).

comidaPrecio( 'Chun Kun',50).
comidaPrecio( 'Fideos Chinos',60).
comidaPrecio( 'Arroz Frito',60).
comidaPrecio( 'Chop Suey',50).
comidaPrecio( 'Chow Mein',55).
% *****************************************************
% ACOMPAÑAMIENTOS
acompanamiento( 'Frijol' ).
acompanamiento( 'Caldo' ).
acompanamiento( 'Arroz' ).
acompanamiento( 'Ensalada' ).
acompanamiento( 'Papas' ).
acompanamiento( 'Sopa' ).
acompanamiento( 'Zanahoria' ).

comidaAcompanamiento( 'Tacos' , 'Frijol').
comidaAcompanamiento( 'Tostadas Naturales' ,'Arroz').
comidaAcompanamiento( 'Ensalada De Atun' , 'Frijol').
comidaAcompanamiento( 'Caldo' , 'Arroz').
comidaAcompanamiento( 'Pure De Papa' , 'Ensalada').

comidaAcompanamiento( 'Sushi' , 'Zanahoria' ).
comidaAcompanamiento( 'Teriyaki' , 'Zanahoria' ).
comidaAcompanamiento( 'Sashimi' , 'Zanahoria' ).
comidaAcompanamiento( 'Tempura' , 'Zanahoria' ).
comidaAcompanamiento( 'Temaki' , 'Zanahoria' ).

comidaAcompanamiento( 'Spaghetti Alla Puttanesca' , 'Zanahoria' ).
comidaAcompanamiento( 'Pansotti' , 'Sopa' ).
comidaAcompanamiento( 'Risotto Mare E Monti' , 'Sopa' ).
comidaAcompanamiento( 'Paglia E Fieno' , 'Zanahoria' ).
comidaAcompanamiento( 'Fetucini Al Futti Di Mare' , 'Zanahoria' ).

comidaAcompanamiento( 'Fajita' , 'Sopa' ).
comidaAcompanamiento( 'Hamburguesa' , 'Papas' ).
comidaAcompanamiento( 'Hotdog' , 'Papas' ).
comidaAcompanamiento( 'Sandwich' , 'Papas' ).
comidaAcompanamiento( 'Chuletas BBQ' , 'Sopa' ).

comidaAcompanamiento( 'Chun Kun' , 'Arroz' ).
comidaAcompanamiento( 'Fideos Chinos' , 'Arroz' ).
comidaAcompanamiento( 'Arroz Frito' , 'Arroz' ).
comidaAcompanamiento( 'Chop Suey' , 'Arroz' ).
comidaAcompanamiento( 'Chow Mein' , 'Arroz' ).

acompanamientoPrecio( 'Frijol' , 10 ).
acompanamientoPrecio( 'Caldo' , 10 ).
acompanamientoPrecio( 'Arroz' , 10 ).
acompanamientoPrecio( 'Ensalada' , 25 ).
acompanamientoPrecio( 'Papas' , 15 ).
acompanamientoPrecio( 'Sopa' , 10 ).
acompanamientoPrecio( 'Zanahoria',15 ).

% *****************************************************
% BEBIDAS
bebida('Te').
bebida('Refresco').
bebida('Cafe').
bebida('Vino').
bebida('Cerveza').
bebida('Ron').
bebida('Agua').
bebida('Cafe').
bebida('Limonada').

bebidaPrecio( 'Te' , 15).
bebidaPrecio( 'Refresco' , 20 ).
bebidaPrecio( 'Cafe' , 25 ).
bebidaPrecio( 'Vino' , 30 ).
bebidaPrecio( 'Cerveza' , 25 ).
bebidaPrecio( 'Ron' , 30 ).
bebidaPrecio( 'Agua' , 30 ).
bebidaPrecio( 'Cafe' , 30 ).
bebidaPrecio( 'Limonada' , 30 ).

% CLAUSULAS
comidasPorTipoComida( Comida , TipoComida ):-
	comidaTipos( Comida , _TipoPersona , TipoComida ).


comidasPorTipoPersona( Comida , TipoPersona ):-
	comidaTipos( Comida , TipoPersona , _TipoComida ).

listaIngredientes( Comida , ListaIngredientes) :- 
	findall( Ingrediente , comidaIngrediente( Comida , Ingrediente ), ListaIngredientes).

checarIngrediente( Ingrediente ):-
	ingredienteCantidad( Ingrediente , IngredienteTotal ),
 	IngredienteTotal > 0.

puedeCocinar( Comida ):-
 	listaIngredientes( Comida , ListaIngredientes ),
 	puedeCocinar( Comida , ListaIngredientes).
puedeCocinar( Comida , [Ingrediente|Rest] ) :- 
	checarIngrediente( Ingrediente ),
	puedeCocinar(Comida , Rest).
puedeCocinar( 'Tacos' , [] ).
puedeCocinar( 'Pure De Papa' , [] ).
puedeCocinar( 'Tostadas Naturales' , [] ).
puedeCocinar( 'Ensalada De Atun' , [] ).
puedeCocinar( 'Caldo' , [] ).

puedeCocinar( 'Sushi' , [] ).
puedeCocinar( 'Teriyaki' , [] ).
puedeCocinar( 'Sashimi' , [] ).
puedeCocinar( 'Tempura' , [] ).
puedeCocinar( 'Temaki' , [] ).

puedeCocinar( 'Spaghetti Alla Puttanesca' , [] ).
puedeCocinar( 'Pansotti' , [] ).
puedeCocinar( 'Risotto Mare E Monti' , [] ).
puedeCocinar( 'Paglia E Fieno' , [] ).
puedeCocinar( 'Fetucini Al Futti Di Mare' , [] ).

puedeCocinar( 'Fajita' , [] ).
puedeCocinar( 'Hamburguesa' , [] ).
puedeCocinar( 'Hotdog' , [] ).
puedeCocinar( 'Sandwich' , [] ).
puedeCocinar( 'Chuletas BBQ' , [] ).

puedeCocinar( 'Chun Kun' , [] ).
puedeCocinar( 'Fideos Chinos' , [] ).
puedeCocinar( 'Arroz Frito' , [] ).
puedeCocinar( 'Chop Suey' , [] ).
puedeCocinar( 'Chow Mein' , [] ).

comprarComida( Comida , Dinero ):-
	puedeCocinar( Comida ),
	comidaPrecio( Comida , Precio ),	
	Dinero >= Precio,
	Cambio is Dinero - Precio,
	write( 'COMPRA ACEPTADA' ), nl,
	write( 'Cambio: ' + Cambio ) , nl,
	actualizarIngredientes( Comida ).

comprarComidaAcompanamiento( Comida , Dinero ):-
	puedeCocinar( Comida ),
	comidaPrecio( Comida , Precio ),
	comidaAcompanamiento( Comida , Acompanamiento ),
	acompanamientoPrecio( Acompanamiento , APrecio ),
	Dinero >= Precio - APrecio,
	Cambio is ( Dinero - Precio - APrecio),
	write( 'COMPRA ACEPTADA' ), nl,
	write( 'Cambio: ' + Cambio ) , nl,
	actualizarIngredientes( Comida ).

comprarAcompanamiento( Acompanamiento , Dinero ):-
	acompanamientoPrecio( Acompanamiento , APrecio ),
	Dinero >= Precio - APrecio,
	Cambio is ( Dinero - Precio - APrecio),
	write( 'COMPRA ACEPTADA' ), nl,
	write( 'Cambio: ' + Cambio ) , nl.

comprarBebida( Bebida , Dinero ):-
	bebidaPrecio( Bebida , BPrecio ),
	Dinero >= BPrecio,
	Cambio is ( Dinero - BPrecio),
	write( 'COMPRA ACEPTADA' ), nl,
	write( 'Cambio: ' + Cambio ) , nl.

actualizarIngredientes( Comida ):-
	listaIngredientes( Comida , ListaIngredientes),
	update( ListaIngredientes ).

update( [ Ingrediente | Rest ] ):-
	ingredienteCantidad( Ingrediente , Cantidad ),
	retract( ingredienteCantidad( Ingrediente , Cantidad ) ),
	TC is Cantidad - 1,
	assert( ingredienteCantidad( Ingrediente , TC ) ),
	update( Rest ).
update([]).