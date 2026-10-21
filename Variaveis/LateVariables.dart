//LateVariables.dart
//Assunto: o uso do late e seus casos
// Documentação oficial: https://dart.dev/language/variables#late-variables
// Casos:
//   1. late com o valor dado depois
//   2. sem late → erro antes de rodar
//   3. late sem nunca receber valor → erro ao rodar
//   4. late que só calcula no primeiro uso

// late → "atrasado" em inglês. A variável NÃO aceita null, mas pode receber o valor depois.
//        O Dart confia em você e não confere: se esquecer, o erro só aparece ao rodar.
// Dois usos:
//   1. Dar o valor depois (o valor com certeza vai existir, só chega mais tarde)
//   2. Calcular o valor só quando a variável for usada pela primeira vez
// Lembrete: o programa começa no main. O que está dentro do bloco de uma função
// só roda quando ela é chamada pelo nome com ().
// Obs.: cada caso é um programa completo. Para testar, copie só um deles para o DartPad.

// ==========================================
// Caso 1: late com o valor dado depois
// ==========================================
late String animal; // cria a variável sem valor; o late promete que ela vai receber um

void main() {
  animal = "Melzinha"; // cumpre a promessa: dá o valor antes de usar
  print(animal);       // saída: Melzinha
}

// ==========================================
// Caso 2: sem late → erro ANTES de rodar
// ==========================================
String animal; // String não aceita null e não recebeu valor → o editor sublinha o erro

void main() {
  animal = "Melzinha";
  print(animal);
}

// ==========================================
// Caso 3: late sem nunca receber valor → erro só QUANDO roda
// ==========================================
late String animal; // promete que vai receber valor...

void main() {
  print(animal); // ...mas não recebeu: LateInitializationError ao rodar
}

// ==========================================
// Caso 4: late que só calcula no primeiro uso
// ==========================================
// Função: mostra uma mensagem e devolve um texto (String).
// O print MOSTRA na hora em que a função roda; o return só ENTREGA o valor.
String buscarAnimal() {
  print("Buscando o animal...");
  return "Rex";
}

void main() {
  late String animal = buscarAnimal(); // só anota de onde vem o valor, ainda não busca
  print("Antes de usar");
  print(animal); // primeiro uso: agora chama buscarAnimal()
}

// saída:
// Antes de usar
// Buscando o animal...
// Rex
// Sem o late, "Buscando o animal..." apareceria antes de "Antes de usar".