// ExerciciosVariables.dart
// Assunto: exercícios da página Variables (dart.dev/language/variables)
// Obs.: cada exercício é um programa completo. Para testar, copie só um deles para o DartPad.
// Documentação oficial: https://dart.dev/language/variables
// Exercícios:
//   1. criando variáveis (var, String e int)
//   2. null safety (?, ?? e ??=), com uma variação
//   3. valor padrão (default value)
//   4. late: dar o valor depois
//   5. late: calcular só quando usar
//   6. final e const em valores
//   7. final e const em listas (3 versões)
//   8. wildcard (_) (2 versões)

// ==========================================
// Exercício 1: criando variáveis (var, String e int)
// Saída: Ellie, Cachorro, 5
// ==========================================
void main(){
    var nome = "Ellie";        // var: o Dart descobre que é String
    String especie = "Cachorro"; // tipo escrito no código
    int idade = 5;             // número inteiro

    print("$nome, $especie, $idade"); // o $ coloca o valor da variável dentro do texto
    // saída: Ellie, Cachorro, 5
}

// ==========================================
// Exercício 2: null safety (?, ?? e ??=)
// Saída (2 linhas): Sem telefone. | Ana 99999-0000
// ==========================================
void main(){
    String nome = "Ana";   // obrigatório: não aceita null
    String? telefone;      // opcional: começa como null

    print(telefone ?? "Sem telefone."); // telefone é null → usa o texto da direita

    telefone ??= "99999-0000"; // só recebe o valor porque estava null
    print("$nome $telefone");
    // saída:
    // Sem telefone.
    // Ana 99999-0000
    // A ordem importa: se o ??= viesse antes, o ?? nunca mostraria "Sem telefone."
}

// ==========================================
// Exercício 2 (variação): agora o nome é que pode ser null
// Saída (2 linhas): Sem nome | Isaac 99999-0000
// ==========================================
void main(){
    String? nome; // opcional: começa como null
    String telefone = "99999-0000"; // obrigatório: já nasce com valor

    print(nome ?? "Sem nome"); // nome é null → usa o texto da direita

    nome ??= "Isaac"; // só recebe o valor porque estava null
    print("$nome $telefone");
    // saída:
    // Sem nome
    // Isaac 99999-0000
}

// ==========================================
// Exercício 3: valor padrão (default value)
// Saída (2 linhas): null | 10
// ==========================================
void main(){

    int? pontos;    // com ? e sem valor → começa como null
    print(pontos);  // saída: null

    bool jogadorVip = true;
    int nivel;      // sem ? e sem valor: pode, desde que receba valor antes de ser usado

    if(jogadorVip){ // jogadorVip já é true ou false, então ele mesmo é a condição
        nivel = 10;
    }
    else{
        nivel = 1;
    }

    print(nivel);   // saída: 10 (com jogadorVip = false, a saída é 1)
}

// ==========================================
// Exercício 4: late, dar o valor depois
// Saída: Tiago
// ==========================================
late String usuarioLogado; // não aceita null, mas recebe o valor depois

void fazerLogin(){
    usuarioLogado = "Tiago";
}
void mostrarPerfil(){
    print(usuarioLogado);
}

void main(){
    fazerLogin();
    mostrarPerfil(); //Se eu inverter a ordem da um erro de late initialization pois primeiro ele tenta imprimir o usuariologado mas ele não tem valor então da problema
    // saída: Tiago
    // Na ordem invertida: LateInitializationError, que só aparece AO RODAR
}

// ==========================================
// Exercício 5: late, calcular só quando usar
// Saída (3 linhas): Menu aberto | Carregando relatório | Relatório OK
// ==========================================
String carregarRelatorio(){
    print("Carregando relatório");
    return "Relatório OK";
}

void main(){
    late String relatorio = carregarRelatorio(); // na mesma linha da criação: só executa no primeiro uso
    print("Menu aberto");
    print(relatorio); // primeiro uso: agora a função executa
    // saída:
    // Menu aberto
    // Carregando relatório
    // Relatório OK
    // Sem o late, "Carregando relatório" apareceria primeiro.
}

// ==========================================
// Exercício 6: final e const em valores
// Saída (4 linhas): Íris Pet Spa | 5 | 10 | a data e a hora do momento
// ==========================================
void main(){
    const loja = "Íris Pet Spa";         // const: valor conhecido no código
    const taxaEntrega = 5;
    const taxaDupla = taxaEntrega * 2;   // conta só com constantes: também é const
    final horaPedido = DateTime.now();   // final: a hora só existe quando o programa roda
    print("$loja \n$taxaEntrega \n$taxaDupla \n$horaPedido"); // \n = quebra de linha
    // saída:
    // Íris Pet Spa
    // 5
    // 10
    // (data e hora do momento em que rodou)
}

// ==========================================
// Exercício 7: final em lista, a lista aceita novos itens
// Saída: [Arroz, Feijão]
// ==========================================
void main(){
    final carrinho = ["Arroz"];
    carrinho.add("Feijão"); // final tranca a variável, não o conteúdo
    print(carrinho);        // saída: [Arroz, Feijão]
}

// ==========================================
// Exercício 7: final em lista, não pode trocar a lista inteira
// Saída: nenhuma, erro ANTES de rodar (o programa nem começa)
// ==========================================
void main(){
    final carrinho = ["Arroz", "Feijão"];
    carrinho = ["Leite"]; // erro ANTES de rodar: uma variável final só pode receber valor uma vez
    print(carrinho);
}

// ==========================================
// Exercício 7: const em lista, não aceita novos itens
// Saída: erro QUANDO roda → Unsupported operation: Cannot add to an unmodifiable list
// ==========================================
void main(){
    const categorias = ["Comida", "Bebida"];
    categorias.add("Limpeza"); // erro só AO RODAR: a lista const não pode ser alterada
    print(categorias);
}

// ==========================================
// Exercício 8: wildcard (_)
// ==========================================
String carregarRelatorio(){
    print("Carregando relatório...");
    return "Relatório OK";
}

void main(){
    var _ = "Arthur"; // o _ pode se repetir no mesmo bloco
    var _ = 3;

    var _ = carregarRelatorio(); // a função roda (o print dela aparece), mas o valor devolvido é ignorado
    // saída: Carregando relatório...
}

// ==========================================
// Exercício 8: o _ não pode ser lido
// ==========================================
void main(){
    var _ = "Isaac";
    print(_); // erro ANTES de rodar: Undefined name '_' (para o Dart, o _ não é um nome)
}