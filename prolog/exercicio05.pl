filme('Amnésia').
filme('Babel').
filme('Capote').
filme('Casablanca').
filme('Matrix').
filme('Rebbeca').
filme('Shrek').
filme('Sinais').
filme('Spartacus').
filme('Superman').
filme('Titanic').
filme('Tubarão').
filme('Volver').


dirigiu('Nolan','Amnésia').
dirigiu('Inarritu','Babel').
dirigiu('Miller','Capote').
dirigiu('Curtiz','Casablanca').
dirigiu('Wachowsk','Matrix').
dirigiu('Hitchcock','Rebbeca').
dirigiu('Adamson','Shrek').
dirigiu('Shymalan','Sinais').
dirigiu('Kubrik','Spartacus').
dirigiu('Donner','Superman').
dirigiu('Cameron','Titanic').
dirigiu('Spielberg','Tubarão').
dirigiu('Almodóvar','Volver').


genero('Amnésia','Suspense').
genero('Babel','Drama').
genero('Capote','Drama').
genero('Casablanca','Romance').
genero('Matrix','Ficação').
genero('Rebbeca','Suspense').
genero('Shrek','Aventura').
genero('Sinais','Ficação').
genero('Spartacus','Ação').
genero('Superman','Aventura').
genero('Titanic','Romance').
genero('Tubarão','Suspense').
genero('Volver','Drama').


ano('Amnésia', 2000).
ano('Babel', 2006).
ano('Capote', 2005).
ano('Casablanca', 1942).
ano('Matrix', 1999).
ano('Rebbeca', 1940).
ano('Shrek', 2001).
ano('Sinais', 2002).
ano('Spartacus', 1960).
ano('Superman', 1978).
ano('Titanic', 1997).
ano('Tubarão', 1975).
ano('Volver', 2006).


minutos('Amnésia', 113).
minutos('Babel', 142).
minutos('Capote', 98).
minutos('Casablanca', 102).
minutos('Matrix', 136).
minutos('Rebbeca', 130).
minutos('Shrek', 90).
minutos('Sinais', 106).
minutos('Spartacus', 184).
minutos('Superman', 143).
minutos('Titanic', 194).
minutos('Tubarão', 124).
minutos('Volver', 121).


duracao_inferior(X) :- minutos(X, Y), Y < 100.

% Respostas
% a) Quem dirigiu o filme Titanic?
% dirigiu(X, 'Titanic').
%
% b) Quais são os filmes de suspense? 
% genero(X, 'Suspense').
%
% c) Quais os filmes dirigidos por Donner? 
% dirigiu('Donner', X).
%
% d) Em que ano foi lançado o filme Sinais? 
% ano('Sinais', X).
%
% e) Quais os filmes com duração inferior a 100min?
duracao_inferior(X) :- minutos(X, Y), Y < 100.
%
% f) Quais os filmes lançados entre 2000 e 2005? 
%
filmes_2000_2005(X) :- (ano(X, Y), Y >= 2000, Y =< 2005).
%
%
% 5.2 Usando as regras criadas anteriormente construa o predicado “clássico”, que retorna o
% título dos filmes lançados antes de 1980. 
%
classico(X) :- ano(X, Y), Y < 1980.
% 5.3 Usando as regras criadas anteriormente construa o predicado “gênero”, que retorna o
% título dos filmes de um gênero específico. 
%
% Já Existe genero(Titulo, Genero)
%
% 5.4 Usando os predicados “clássico” e “gênero” faça uma consulta para recuperar os
% títulos de filmes clássicos de suspense. 
%
%   classico(X), genero(X, 'Suspense')

