%1.- Se consideran que los clientes estaran interesados 
%en todos los estilos musicales de los cuales hayan 
%comprado un disco.

%2.- Los clientes interesados en un estilo musical 
%tambienestan interesados en los estilos relacionados a el.

%3.- Los clientes interesados en Heavy Metal o Musica 
%clasica nunca compraran un disco cuyo autor sea Enrique Iglesias.

%4.- Nadie tiene interes en la jota aragonesa y Heavy Metal a la vez.

%Demostrar :-: Hay alguien con intereses en Heavy Metal y Musica Clasica.

relacionado(heavy_metal,rock).
relacionado(ska,reage).

compra(juan,highway_to_hell).
compra(juan,tutto_pavarotti).
compra(luis,escape).
compra(pedro,jota_total).

interes(luis,pop).
interes(pedro,jota_aragonesa).
interes(ana,opera).

estilo(highway_to_hell,heavy_metal).
estilo(tutto_pavarotti,musica_clasica).
estilo(jota_total,jota_aragonesa).

autor(enrique_iglesias,escape).

gustoEstilo(Cliente,Disco,Estilo):-
    compra(Cliente,Disco),
    estilo(Disco,Estilo).

    
    
    
    