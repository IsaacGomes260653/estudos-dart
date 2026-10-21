// NullSafety.dart
// Assunto: atribuição de valor null nas variáveis e suas propriedades
// Documentação oficial: https://dart.dev/language/variables#null-safety
//   (para se aprofundar: https://dart.dev/null-safety)
// Casos:
//   1. com ? → a variável aceita null
//   2. sem ? → não aceita null (erro)
//   3. var com null → o tipo vira dynamic
//   4. com ? e sem valor → começa como null
//   5. ?? → valor reserva quando é null
//   6. ??= → atribui só se estiver null

// ?      → indica que a variável pode receber valor null
// null   → ausência de valor; não é o mesmo que vazio ou zero
// var    → cria uma variável; o Dart descobre o tipo pelo valor (inferência de tipo)
// String → tipo de dado que representa texto; só aceita null se tiver ? (String?)
// ??     → se o valor da esquerda for null, usa o valor da direita
// ??=    → atribui um valor à variável somente se ela estiver null
// Obs.: cada caso é um programa completo. Para testar, copie só um deles para o DartPad.

// ==========================================
// Caso 1: com ? → a variável aceita null
// Saída: null
// ==========================================
void main() {
  String? name1 = null;
  print(name1); // saída: null
}

// ==========================================
// Caso 2: sem ? → não aceita null, gerando erro
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main() {
  String name2 = null; // erro: um valor 'Null' não pode ser atribuído a uma variável 'String'
}

// ==========================================
// Caso 3: var com null → o tipo vira dynamic e aceita qualquer valor
// Saída: null
// ==========================================
void main() {
  var name3 = null;
  print(name3); // saída: null
}

// ==========================================
// Caso 4: com ? e sem valor → a variável começa como null
// Saída: null
// ==========================================
void main() {
  String? name4;
  print(name4); // saída: null
}

// ==========================================
// Caso 5: ?? → name5 é null, então usa o valor da direita
// Saída: Sem nome
// ==========================================
void main() {
  String? name5;
  print(name5 ?? "Sem nome"); // saída: Sem nome
}

// ==========================================
// Caso 6: ??= → name6 é null, então recebe "Isaac"
// (se já tivesse um valor, continuaria com o valor antigo)
// Saída: Isaac
// ==========================================
void main() {
  String? name6;
  name6 ??= "Isaac";
  print(name6); // saída: Isaac
}