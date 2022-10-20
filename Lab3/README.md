#A questao 3.1 está presente na pasta users
- Repostas para as perguntas do 3.1
a)O novo Repositório é instanciado com a notaçao @AutoWired. Isso elimina a necessidade de criarmos getters e setters para uma classe. Para além disso, o @AutoWired permite que permite a injeçao das dependencias para o SpringBoot, de forma que nao precisamos fazer isto de forma manual com o legacy code INJECT.

b) Os métodos save(), findAll(), findById() e delete() foram usados. Estes métodos estao definidos pela classe-mae CrudRepository, que é fornecida pelo springframework.data.repository e extendida na nossa interface UserRepository

c)Os dados sao salvos em memória, até que o método flush seja chamado e possa sincronizar os dados com o DB.

d)A anotaçao @NotBlank está declarada utilizando o import javax.validation.constraints.NotBlank, que basicamente nos permite que um valor nao seja Null e tenha um tamanho maior do que zero (para o caso de strings, isso é muito importante, já que podemos enviar "").