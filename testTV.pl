persona(
    nombre('Gera Navarro'),
    edad(36),
    sexo('Masculino'),
    trabajo('Carnitas Don Beto'),
    lugartrabajo('El Cardonal'),
    direccion(
        calle('El Cardon'),
        numero('123'),
        colonia('Agua Escondida')
        
    ),
    telefono('15819156188')
).

persona(
    nombre('Carlos Uribe'),
    edad(25),
    sexo('Masculino'),
    trabajo('Carnitas Don Beto'),
    lugartrabajo('El Cardonal'),
    direccion(
        calle('El Cardon'),
        numero('123'),
        colonia('Agua Escondida')
        
    ),
    telefono('15819156188')
).

persona(
    nombre('Danny Jacinto'),
    edad(30),
    sexo('Masculino'),
    trabajo('Carnitas Don Beto'),
    lugartrabajo('El Cardonal'),
    direccion(
        calle('El Cardon'),
        numero('123'),
        colonia('Agua Escondida')        
    ),
    telefono('15819156188')
).

mayor(A,B):-
    A>B.
    

colegas(A,B):-
    persona(nombre(A),_EA,_SA,trabajo(TA),_LA,_DA,_TELA),
    persona(nombre(B),_EB,_SB,trabajo(TB),_LB,_DB,_TELB),
    TA== TB,
    A\==B.

companeros(A,B):-
    persona(nombre(A),_EA,_SA,trabajo(TA),lugartrabajo(LA),_DA,_TELA),
    persona(nombre(B),_EB,_SB,trabajo(TB),lugartrabajo(LB),_DB,_TELB),
    TA== TB,
    LA==LB,
    A\==B,
    write('Trabajan en: '),
    write(LA).







