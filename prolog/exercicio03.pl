aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).
frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).
funcionario(pedro, ufrj).
funcionario(ana_paula, puc).
funcionario(carlos, puc).


aluno_do_professor(Aluno, Professor) :- aluno(Aluno, Disciplina), professor(Professor, Disciplina).

assossiado_universidade(Aluno, Universidade) :-  frequenta(Aluno, Universidade).  
assossiado_universidade(Professor, Universidade) :-  funcionario(Professor, Universidade).  