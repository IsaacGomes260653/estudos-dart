// Numbers.dart
// Assuntos: números em Dart (int, double, num), formas de escrever números e conversões entre texto e número
// Documentação oficial: https://dart.dev/language/built-in-types#numbers
// Casos:
//   1. int: inteiros, positivos ou negativos
//   2. double: números com casas decimais
//   3. double recebendo um inteiro
//   4. num: aceita inteiro e decimal
//   5. var trava no tipo do primeiro valor (erro)
//   6. hexadecimal com 0x
//   7. notação científica com e
//   8. separador de dígitos (_)
//   9. texto → int com int.parse
//   10. resultado do parse numa variável String (erro)
//   11. var com parse
//   12. texto → double com double.parse
//   13. int.parse com texto inválido (erro QUANDO roda)
//   14. int.tryParse devolve null em vez de quebrar
//   15. número → texto com toString; o + em texto × em número
//   16. a variável String não converte sozinha (erro)
//   17. casas fixas com toStringAsFixed
//   18. double → int com toInt e round
//   19. double não entra sozinho numa variável int (erro)
//   20. decimais são aproximados
//   21. dinheiro em centavos (int)

// int            → número inteiro, positivo ou negativo, sem casas decimais
// double         → número com casas decimais (64 bits, igual ao double do Java); o separador é o ponto: 2.5
// num            → aceita int e double ao mesmo tempo, e pode trocar entre eles
// 0x             → escreve um int em hexadecimal (base 16); as letras A a F valem de 10 a 15
// e              → notação científica: "vezes 10 elevado a" (2.3e5 = 2,3 × 10⁵)
// _ entre dígitos → separador só para facilitar a leitura (1_500_000)
// +=             → atalho: w += 0.5 é o mesmo que w = w + 0.5
// int.parse()    → interpreta um texto como int (texto inválido → erro ao rodar)
// double.parse() → interpreta um texto como double
// int.tryParse() → igual ao parse, mas devolve null se o texto for inválido (resultado é int?)
// .toString()    → transforma o valor em texto
// .toStringAsFixed(n) → transforma em texto com n casas decimais fixas (corta, completa com zero ou arredonda)
// .toInt()       → transforma double em int cortando as casas decimais
// .round()       → transforma double em int arredondando
// Regra: parse = texto → número (chamado no TIPO: int.parse("30")), para calcular
//        toString = número → texto (chamado no VALOR: 7.toString()), para mostrar
// O que vai para a variável é sempre o RESULTADO do lado direito do =, e ele precisa combinar com o tipo da variável.
// Obs.: cada caso é um programa completo. Para testar, copie só um deles para o DartPad.

// ==========================================
// Caso 1: int → inteiros, positivos ou negativos
// Saída: 27 -3
// ==========================================
void main(){
    int w = 27;  // inteiro positivo
    int o = -3;  // inteiro negativo
    print("$w $o"); // saída: 27 -3
}

// ==========================================
// Caso 2: double → números com casas decimais
// Saída: 26.0653
// ==========================================
void main(){
    double w = 26.0653; // no código o separador é ponto, não vírgula
    print(w);           // saída: 26.0653
}

// ==========================================
// Caso 3: double recebendo um inteiro → vira 5.0, e continua igual a 5
// Saída: 5.0
// ==========================================
void main(){
    double w = 5;   // o Dart converte o 5 para 5.0 automaticamente
    print(w);       // saída: 5.0
    assert(w==5);   // não dá erro: o == compara o valor, e 5.0 == 5 é true
}

// ==========================================
// Caso 4: num → aceita inteiro e decimal e pode trocar entre eles
// Saída: 2.5
// ==========================================
void main(){
    num w = 2;    // começa inteiro
    w += 0.5;     // mesmo que w = w + 0.5
    print(w);     // saída: 2.5
}

// ==========================================
// Caso 5: var trava no tipo do primeiro valor → erro ANTES de rodar
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main(){
    var w = 2;    // var: w vira int
    w += 0.5;     // erro: um valor double não pode ser atribuído a uma variável int
    print(w);
}

// ==========================================
// Caso 6: hexadecimal com 0x → é um número (int), não um texto
// Saída: 255
// ==========================================
void main(){
    num w = 0xff; // sem aspas: é número; ff em hexadecimal = 15 × 16 + 15
    print(w);     // saída: 255
}

// ==========================================
// Caso 7: notação científica com e → é um número decimal (double)
// Saída: 230000.0
// ==========================================
void main(){
    num w = 2.3e5; // 2,3 × 10⁵
    print(w);      // saída: 230000.0
}

// ==========================================
// Caso 8: separador de dígitos → só facilita a leitura
// Saída: 1500000
// ==========================================
void main(){
    num w = 1_500_000; // os _ não mudam o valor: é o mesmo que 1500000
    print(w);      // saída: 1500000
}

// ==========================================
// Caso 9: texto → int com int.parse
// Saída: 31
// ==========================================
void main(){
    String w = "30";        // o texto, como chegaria do teclado
    int x = int.parse(w);   // parse interpreta o texto; o = guarda o número
    print(x+1);             // saída: 31
}

// ==========================================
// Caso 10 (visto na conversa): o resultado do parse numa variável String → erro ANTES de rodar
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main(){
    String w = int.parse("30"); // erro: o parse devolve um int, e a variável String só aceita texto
    // O "30" é só a ENTRADA do parse; o que vai para a variável é a SAÍDA (o número 30).
}

// ==========================================
// Caso 11 (visto na conversa): var com parse → o var vira int
// Saída: 31
// ==========================================
void main(){
    var w = int.parse("30"); // o var copia o tipo do resultado: int
    print(w+1);              // saída: 31
}

// ==========================================
// Caso 12: texto → double com double.parse
// Saída: 2.5
// ==========================================
void main(){
    var o = double.parse("2.5"); // o var vira double
    print(o);                    // saída: 2.5
}

// ==========================================
// Caso 13: int.parse com texto inválido → erro só AO RODAR (FormatException)
// Saída: erro QUANDO roda → FormatException: Invalid radix-10 number (at character 1)
// ==========================================
void main(){
    String o = "dez";      // palavra, não número
    int i = int.parse(o);  // o parse não consegue interpretar "dez" e o programa quebra
    print(i);              // não chega aqui
}

// ==========================================
// Caso 14: int.tryParse → devolve null em vez de quebrar
// Saída: -1
// ==========================================
void main(){
    String o = "dez";
    int? i = int.tryParse(o); // texto inválido → null (por isso a variável é int?)
    print(i ?? -1);           // saída: -1
}

// ==========================================
// Caso 15: número → texto com toString, e o + em texto × em número
// Saída: 7, 33 e 6 (uma por linha)
// ==========================================
void main(){
    int o = 7;
    String i = o.toString(); // o 7 continua número; é criado um texto novo "7"
    print(i);                // saída: 7

    print("3"+"3"); // saída: 33 → em texto, o + junta
    print(3+3);     // saída: 6 → em número, o + soma
}

// ==========================================
// Caso 16 (visto na conversa): a variável String não converte sozinha → erro ANTES de rodar
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main(){
    String o = 7; // erro: um valor int não pode ser atribuído a uma variável String
    // O String à esquerda só diz o que a variável ACEITA; quem converte é o .toString().
    // O certo seria: String o = 7.toString();
}

// ==========================================
// Caso 17: double → texto com casas fixas (toStringAsFixed)
// Saída: 2.72, 7.50 e 3 (uma por linha)
// ==========================================
void main(){
    double o = 2.71828;
    print(o.toStringAsFixed(2)); // saída: 2.72 → cortou e arredondou (o 8 puxa para cima)

    double w = 7.5;
    print(w.toStringAsFixed(2)); // saída: 7.50 → completou com zero

    print(o.toStringAsFixed(0)); // saída: 3 → sem casas, arredondou
    // O resultado é texto: serve para mostrar, não para calcular.
}

// ==========================================
// Caso 18: double → int com toInt (corta) e round (arredonda)
// Saída: 9 e 10 (uma por linha)
// ==========================================
void main(){
    double nota = 9.6;
    print(nota.toInt()); // saída: 9 → cortou as casas decimais
    print(nota.round()); // saída: 10 → arredondou
}

// ==========================================
// Caso 19: double não entra sozinho numa variável int → erro ANTES de rodar
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main(){
    double nota = 9.6;
    int notaInt = nota; // erro: um valor double não pode ser atribuído a uma variável int
    print(notaInt);
}

// ==========================================
// Caso 20: decimais são aproximados (o computador guarda em binário)
// Saída: 0.30000000000000004 e false (uma por linha)
// ==========================================
void main(){
    print(0.1 + 0.2);        // saída: 0.30000000000000004
    print(0.1 + 0.2 == 0.3); //False: o motivo dele dar false é que o número é representado em binário fazendo com que eles não sejam exatos.
    // Detalhe: 0,1 em binário é uma dízima infinita; o double (64 bits) corta e guarda um valor quase igual.
    // Não é defeito do Dart: Java, JavaScript, Python e C seguem o mesmo padrão (IEEE 754).
}

// ==========================================
// Caso 21: dinheiro em centavos (int) → contas exatas; converte só para mostrar
// Saída: 40.00
// ==========================================
void main(){
    int p1centavos = 2550; // R$ 25,50
    int p2centavos = 1450; // R$ 14,50
    int totalCentavos = p1centavos + p2centavos; // 4000: conta exata com int
    double totalReais = totalCentavos/100;       // converte só para exibir: 40.0
    print(totalReais.toStringAsFixed(2));        // saída: 40.00
}