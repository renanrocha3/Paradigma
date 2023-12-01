passaro(joao).
peixe(pedro).
minhoca(maria).

gosta_de(passaro, minhoca).
gosta_de(gatos, peixe).
gosta_de(gatos, passaro).
gosta_de(amigo, amigo).

gato(chuck_norris).

come(chuck_norris, X) :- gosta_de(gato, X)
