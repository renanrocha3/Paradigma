adiciona(X, L1, [X|L1]).

remover(_, [], []).
remover(X, [X|T], L) :- remover(X, T, L).
remover(X, [H|T], [H|L]) :- X \= H, remover(X, T, L).

inverte([], []).
inverte([H|T], L) :- inverte(T, L1), append(L1, [H], L).

tamanho([], 0).
tamanho([_|T], X) :- tamanho(T, N), X is N + 1.

soma([], 0).
soma([H|T], X) :- soma(T, N), X is N + H.
