% Manejo de recetas o menu.
% Consulta.
% puede_cocinar(comida).
% necesita_ingredientes(comida,ingredientes).
%
% x ingrediente indicar cantidad, la cantidad existente debe ser suficiente para cocinar el producto.
% indicar tipo de comida.
% -> Mexicana.
% -> Italiana.
% -> Japonesa.
% Indicar tipo de personas.
% -> Vegetarianos.
% -> Deportistas
% -> Baja en grasas.
% -> Diabeticos.
% -> Normal

% Precio de la comida.
% Comida similar -> 35
% Acompañamiento -> 35
% Bebida -> 35
% Bebida -> 35 -> 14
% Pedidos

% DYNAMIC
:- dynamic tipoComida/1.
:- dynamic tipoPersona/1.
:- dynamic comida/1.
:- dynamic comidaCantidad/2.
:- dynamic comidaTipos/3.
:- dynamic comidaPrecio/2.
:- dynamic ingrediente/2.

%INGREDIENTES--------------------------------------------------------------
ingrediente('Tortilla').
ingrediente('Carne').

ingredienteCantidad('Tortilla',20).
ingredienteCantidad('Carne',20).

ingredientePara('Taco','Tortilla').
ingredientePara('Taco','Carne').


% TIPO COMIDA-----------------------------------------------------------------
tipoComida( 'Mexicana' ).
tipoComida( 'Japonesa' ).
tipoComida( 'Italiana' ).
tipoComida( 'Americana' ).
tipoComida( 'China' ).

% TIPO PERSONAS----------------------------------------------------------


comidaTipos('Taco' , 'Mexicana' , 'Otro' ).
comidaTipos('Torta' , 'Mexicana' , 'Otro' ).

comidaPrecio( 'Taco' , 18 ).
comidaPrecio( 'Torta' , 25 ).
% BEBIDAS ----------------------------------------------------------
bebida( 'Agua' ).
bebida( 'Vino' ).
bebida( 'Refresco' ).
bebida( 'Agua De Orchata' ).
bebida( 'Cafe' ).
bebida( 'Wiski' ).
bebida( 'Vodka' ).
bebida( 'Tequila' ).
bebida( 'Agua De Jaimaca' ).
bebida( 'Limonada' ).
bebida( 'Te' ).
bebida( 'Naranjada' ).

% CLAUSULAS----------------------------------------------------------
puedeCocinar(Comida,Cantidad):-
	comida(Comida),
	comidaCantidad(Comida,CantActual),
	CantActual >= Cantidad.

comidasPorTipo(Comida,TipoComida):-
	comidaTipos(Comida,_TipoPersona,TipoComida ).


hacerPedido(Comida,Cantidad):-
	comidaTipos(Comida,_TipoC,_TipoP),
	comidaCantidad(Comida,_Cant),
	comidaPrecio(Comida,_Precio),   
    puedeCocinar(Comida,Cantidad).
    
pagarPedido(Comida,Cantidad,Dinero,Cambio):-
    hacerPedido(Comida,Cantidad), 
    precioMultiplicado(Comida,Cantidad,R),
    Dinero>R,
    Cambio is Dinero-R,
    actualizarMenu(Comida,Cantidad).

precioMultiplicado(Comida,Cantidad,R):- 
    comidaPrecio(Comida,P),  
    R is P*Cantidad.
    
actualizarMenu(Comida,CantP):-    
    comida(Comida),
    comidaCantidad(Comida,CantAct),
    comidaTipos(Comida,TipoC,TipoP),
    comidaPrecio(Comida,Precio),        
    delete(Comida,TipoC,TipoP,CantAct,Precio),
    X is CantAct-CantP,
    X >= 0,
    create(Comida,TipoC,TipoP,X,Precio).
    

create( Comida , TipoC , TipoP , Cant , Precio ):-
	assert(comida(Comida)),
	assert(tipoComida(TipoC ) ),
	assert(tipoPersona(TipoP ) ),
	assert(comidaCantidad(Comida,Cant)),
	assert(comidaTipos(Comida,TipoC,TipoP)),
	assert(comidaPrecio(Comida,Precio)).

delete(  Comida , TipoC , TipoP , Cant , Precio ):-
	retract( comida(Comida) ),
	retract( tipoComida( TipoC ) ),
	retract( tipoPersona( TipoP ) ),
	retract( comidaCantidad( Comida , Cant ) ),
	retract( comidaTipos( Comida , TipoC , TipoP ) ),
	retract( comidaPrecio( Comida , Precio ) ).
