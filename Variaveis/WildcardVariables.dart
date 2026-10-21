// WildcardVariables.dart
// Assunto: a variável curinga (wildcard) _
// Documentação oficial: https://dart.dev/language/variables#wildcard-variables
// Requer Dart 3.7 ou mais novo (o DartPad já usa uma versão nova).
// Casos:
//   1. dois _ no mesmo bloco → funciona
//   2. nome comum repetido → erro
//   3. ler o _ → erro
//   4. usar o _ numa condição → erro
//   5. o valor à direita do _ é calculado mesmo assim
//   6. fora do main o _ não é wildcard → erro

// _ sozinho  → wildcard: um "lugar reservado"; o valor é calculado, mas não pode ser lido
// Regras     → pode repetir no mesmo bloco; não pode ser lido; só funciona dentro de blocos (não fora do main)
// Finalidade → ignorar algo que a sintaxe obriga você a declarar (parâmetros de funções, catch, for)
// _saldo     → NÃO é wildcard: é uma variável privada (nome que começa com _); outro assunto (Etapa 2)
// Obs.: cada caso é um programa completo. Para testar, copie só um deles para o DartPad.

// ==========================================
// Caso 1: duas variáveis _ no mesmo bloco → funciona (wildcard pode repetir)
// Saída: Sem erro: o _ pode se repetir
// ==========================================
void main() {
  var _ = 1;
  int _ = 2;
  print("Sem erro: o _ pode se repetir");
}

// ==========================================
// Caso 2: duas variáveis com nome comum repetido → erro ANTES de rodar
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main() {
  var x = 1;
  var x = 2; // erro: o nome x já foi definido
}

// ==========================================
// Caso 3: tentar ler o _ → erro ANTES de rodar
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main() {
  var _ = 1;
  print(_); // erro: o _ não pode ser lido
}

// ==========================================
// Caso 4: tentar usar o _ numa condição → erro ANTES de rodar
// (o if precisa OLHAR o valor; o _ diz que não vai olhar)
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main() {
  var _ = 1;
  if (_ == 1) { // erro: o _ não pode ser lido
    print("Nunca chega aqui");
  }
}

// ==========================================
// Caso 5: o valor à direita do _ é calculado mesmo assim
// Saída: Buscando o animal...
// ==========================================
String buscarAnimal() {
  print("Buscando o animal...");
  return "Rex";
}

void main() {
  var _ = buscarAnimal(); // a função roda: "Buscando o animal..." aparece
  // o "Rex" foi devolvido, mas não há como usá-lo
}

// ==========================================
// Caso 6: fora do main o _ NÃO é wildcard → repetir dá erro ANTES de rodar
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
var _ = 1;
var _ = 2; // erro: fora de blocos, o _ é um nome comum e não pode se repetir

void main() {
  print("Não roda por causa do erro acima");
} 