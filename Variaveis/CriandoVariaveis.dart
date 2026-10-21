// CriandoVariaveis.dart
// Assunto: estrutura básica de um programa Dart e variáveis com suas explicações
// Documentação oficial: https://dart.dev/language/variables
// Casos:
//   1. var: o Dart descobre que o tipo é String
//   2. String: o tipo fica escrito no código

// void    → a função não devolve nada ("vazio" em inglês)
// main    → nome da função onde o programa começa; o Dart sempre procura por ela
// ()      → o que a função recebe; vazio = não recebe nada
// { }     → começo e fim do bloco de código da função
// var     → cria uma variável; o Dart descobre o tipo pelo valor (inferência de tipo)
// String  → tipo de dado que representa texto; só aceita null se tiver ? (String?)
// name    → nome da variável, usado para acessá-la depois
// =       → atribuição: coloca o valor dentro da variável
// "Isaac" → o valor; entre aspas, é texto (String)
// ;       → encerra a instrução (obrigatório)
// print() → mostra algo na tela; o que vai dentro dos () é o que aparece
// Obs.: cada caso é um programa completo. Para testar, copie só um deles para o DartPad.

// ==========================================
// Caso 1: com var, o Dart descobre que o tipo é String
// Saída: Isaac
// ==========================================
void main() {
  var name = "Isaac";
  print(name); // saída: Isaac
}

// ==========================================
// Caso 2: com String, o tipo fica escrito no código
// ==========================================
void main() {
  String nome = "Tiago";
  print(nome); // saída: Tiago
}

// var e String dão o mesmo resultado: a diferença é só se o tipo é descoberto
// pelo Dart (var) ou escrito por você (String).
// Nos dois casos a variável passa a aceitar só texto: atribuir outro tipo de valor dá erro.