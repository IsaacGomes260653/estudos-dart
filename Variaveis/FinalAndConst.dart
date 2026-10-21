// FinalAndConst.dart
// Assunto: variáveis que não mudam (final e const) e a diferença entre trancar a variável e o valor
// Documentação oficial: https://dart.dev/language/variables#final-and-const
// Casos:
//   1. final com valor
//   2. final recebendo outro valor (erro)
//   3. const com valor conhecido no código
//   4. const recebendo outro valor (erro)
//   5. const feita com conta de outra const
//   6. final com a hora atual
//   7. const com a hora atual (erro)
//   8–9.   tranca só o VALOR (var + const [])
//   10–11. tranca só a VARIÁVEL (final + lista comum)
//   12–13. tranca os DOIS (const)

// var    → a variável pode mudar quantas vezes quiser
// final  → recebe valor uma vez só e nunca mais muda; o valor pode ser descoberto com o programa rodando
// const  → também nunca muda, mas o valor precisa ser conhecido já no código (na compilação, antes de rodar)
// DateTime.now() → a data e a hora do momento em que a linha roda
// .add() → adiciona um item no final de uma lista
// Variável × valor: a variável APONTA para um valor.
//   - Trocar para onde ela aponta (x = ...) depende da VARIÁVEL: var pode; final e const não.
//   - Alterar o valor (x.add(...)) depende do VALOR: lista const não pode; lista comum pode.
// Regra: precisa mudar → var; já sei o valor ao escrever o código → const; só descubro rodando → final.
// Obs.: cada caso é um programa completo. Para testar, copie só um deles para o DartPad.

// ==========================================
// Caso 1: final com valor → funciona
// Saída: Isaac
// ==========================================
void main() {
  final nome = "Isaac"; // final: recebe o valor uma vez; o tipo (String) vem do valor
  print(nome); // saída: Isaac
}

// ==========================================
// Caso 2: final não pode receber outro valor → erro ANTES de rodar
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main() {
  final nome = "Isaac";
  nome = "Tiago"; // erro: uma variável final só pode receber valor uma vez
}

// ==========================================
// Caso 3: const com valor conhecido no código → funciona
// Saída: 10
// ==========================================
void main() {
  const limiteDeTarefas = 10; // o 10 está escrito no código: é conhecido antes de rodar
  print(limiteDeTarefas); // saída: 10
}

// ==========================================
// Caso 4: const não pode receber outro valor → erro ANTES de rodar
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main() {
  const limiteDeTarefas = 10;
  limiteDeTarefas = 20; // erro: variáveis constantes não podem receber outro valor
}

// ==========================================
// Caso 5: const feita com conta de outra const → funciona
// Saída: 1440
// ==========================================
void main() {
  const minutosPorHora = 60;
  const minutosPorDia = minutosPorHora * 24; // conta só com constantes: conhecida no código
  print(minutosPorDia); // saída: 1440
}

// ==========================================
// Caso 6: final com a hora atual → funciona (a hora só existe quando o programa roda)
// Saída: a data e a hora do momento (ex.: 2026-10-21 14:30:05.123456)
// ==========================================
void main() {
  final horaDoLogin = DateTime.now();
  print(horaDoLogin); // saída: a data e a hora do momento em que rodou
}

// ==========================================
// Caso 7: const com a hora atual → erro ANTES de rodar
// (na compilação o Dart não sabe que horas serão; se deixasse, a hora ficaria congelada)
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main() {
  const horaDoLogin = DateTime.now(); // erro: const precisa de um valor conhecido no código
}

// ==========================================
// Caso 8: tranca só o VALOR → a variável pode apontar para outra lista
// ==========================================
void main() {
  var foo = const [];  // foo aponta para uma lista vazia const
  foo = [1, 2, 3];     // funciona: foo passa a apontar para uma lista NOVA (a antiga não foi alterada)
  foo.add(4);          // funciona: a lista nova não é const
  print(foo);          // saída: [1, 2, 3, 4]
}

// ==========================================
// Caso 9: tranca só o VALOR → a lista const não aceita itens → erro QUANDO roda
// ==========================================
void main() {
  var foo = const [];
  foo.add(1); // erro ao rodar: a lista const não pode ser alterada
}

// ==========================================
// Caso 10: tranca só a VARIÁVEL → a lista aceita itens
// (é o caso da lista de tarefas do gerenciador: sempre a mesma lista, com tarefas entrando)
// ==========================================
void main() {
  final lista = [1, 2];
  lista.add(3);  // funciona: final não tranca o conteúdo
  print(lista);  // saída: [1, 2, 3]
}

// ==========================================
// Caso 11: tranca só a VARIÁVEL → não pode apontar para outra lista → erro ANTES de rodar
// ==========================================
void main() {
  final lista = [1, 2];
  lista = [3, 4]; // erro: uma variável final só pode receber valor uma vez
}

// ==========================================
// Caso 12: tranca os DOIS → não aceita itens → erro QUANDO roda
// ==========================================
void main() {
  const lista = [1, 2];
  lista.add(3); // erro ao rodar: a lista const não pode ser alterada
}

// ==========================================
// Caso 13: tranca os DOIS → não pode apontar para outra lista → erro ANTES de rodar
// (é o baz = [42] da documentação)
// ==========================================
void main() {
  const baz = [];
  baz = [42]; // erro: variáveis constantes não podem receber outro valor
} 