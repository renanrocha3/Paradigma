nota(joao,5.0).
nota(maria,6.0).
nota(joana,8.0).
nota(mariana,9.0).
nota(cleuza,8.5).
nota(jose,6.5).
nota(jaoquim,4.5).
nota(mara,4.0).
nota(mary,10.0).

situacao_aluno(Aluno, 'aprovado') :- (nota(Aluno, Nota), Nota >= 7).
situacao_aluno(Aluno, 'recuperacao') :- (nota(Aluno, Nota), Nota < 7, Nota >= 5).
situacao_aluno(Aluno, 'reprovado') :- (nota(Aluno, Nota), Nota < 5, Nota >= 0).  