mulher('Cassia').
mulher('Ana').

homem('Silvio').
homem('Marcos').
homem('Fabiano').

bonito('Fabiano').
bonito('Marcos').
bonita('Cassia').

rico('Marcos').
rica('Ana').

forte('Silvio').
forte('Fabiano').
forte('Ana').

amavel('Silvio').

gosta_de(X, Y) :- homem(X), bonita(Y). 
gosta_de('Ana', Y) :- homem(Y), gosta_de(Y, 'Ana').
gosta_de('Cassia', Y) :- homem(Y), rico(Y), bonito(Y), forte(Y).
gosta_de('Cassia', Y) :- homem(Y), rico(Y), amavel(Y), forte(Y).

eh_feliz(X) :- homem(X), rico(X).
eh_feliz(X) :- homem(X), gosta_de(X, Y), gosta_de(Y, X).
eh_feliz(X) :- mulher(X), gosta_de(X, Y), gosta_de(Y, X).
