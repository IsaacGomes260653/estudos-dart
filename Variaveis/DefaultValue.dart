// DefaultValue.dart
// Assunto: valor inicial (padrão) das variáveis
// Documentação oficial: https://dart.dev/language/variables#default-value
// Casos:
//   1. com ? e sem valor → começa como null
//   2. sem ? → precisa de um valor antes de ser usada
//   3. sem ? e sem valor na criação → recebe o valor antes de ser usada
//   4. sem ? e usada sem valor → erro

// int?     → número inteiro que aceita null
// assert() → confere se a condição é verdadeira; se for falsa, para o programa com erro (só no desenvolvimento)
// ==       → compara dois valores; resulta em true (iguais) ou false (diferentes)
// if/else  → executa o bloco do if se a condição for verdadeira, e o do else se for falsa
// Obs.: cada caso é um programa completo. Para testar, copie só um deles para o DartPad.

// ==========================================
// Caso 1: com ? e sem valor → começa como null
// Saída: null
// ==========================================
void main() {
  int? lineCount1;
  assert(lineCount1 == null); // não dá erro, porque é null
  print(lineCount1); // saída: null
}

// ==========================================
// Caso 2: sem ? → precisa de um valor antes de ser usada
// ==========================================
void main() {
  int lineCount2 = 0;
  print(lineCount2); // saída: 0
}

// ==========================================
// Caso 3: sem ? e sem valor na criação → pode, desde que receba valor antes de ser usada
// ==========================================
void main() {
  bool weLikeToCount = true;
  int lineCount3;
  if (weLikeToCount) {
    lineCount3 = 10;
  } else {
    lineCount3 = 0;
  }
  print(lineCount3); // saída: 10 (mude weLikeToCount para false e a saída vira 0)
}

// ==========================================
// Caso 4: sem ? e usada sem valor → erro
// ==========================================
void main() {
  int lineCount4;
  print(lineCount4); // erro: a variável precisa receber um valor antes de ser usada
}