# Estudos de Dart

Meus estudos de Dart, rumo ao Flutter. Cada assunto da linguagem fica registrado em código comentado em português, para eu voltar e revisar quando precisar e para quem quiser aprender Dart do zero seguindo o mesmo caminho.

Os assuntos seguem a ordem da [documentação oficial da linguagem](https://dart.dev/language) e o roadmap do meu [perfil no GitHub](https://github.com/IsaacGomes260653).

## Como usar

Cada arquivo trata de um assunto e é dividido em **casos**. Cada caso é um programa completo, com o próprio `main`.

1. Abra o arquivo do assunto (veja o [índice](#índice-dos-assuntos)).
2. Escolha um caso e copie **o caso inteiro**: do comentário de início (o bloco `// ====` com o título do caso) até a `}` que fecha o `main` dele. Se o caso tiver uma variável ou função antes do `main` (por exemplo, `late String animal;` ou `String buscarAnimal()`), ela faz parte do caso.
3. Cole no [DartPad](https://dartpad.dev) e clique em **Run**. Ou salve num arquivo `.dart` e rode com `dart run caso.dart`.
4. Compare o resultado com o comentário `// Saída:` do caso.

**Por que cada arquivo tem vários `main`?** Um programa Dart começa sempre pela função `main`, e só pode existir uma por programa. Aqui, cada caso é um programa separado: assim ele fica pequeno, mostra uma ideia só e pode ser testado sozinho. Por isso o arquivo inteiro não compila de uma vez (o editor vai acusar `main` repetido). Isso é proposital: o arquivo é um caderno de casos, não um programa único.

Como ler os comentários:

| Comentário | Significado |
|---|---|
| `// Saída: ...` | o que aparece na tela quando o caso roda |
| `erro ANTES de rodar` | erro de compilação: o editor sublinha e o programa nem começa |
| `erro QUANDO roda` | o programa começa, mas para com um erro no meio |

Alguns casos dão erro de propósito, para mostrar o que a linguagem não deixa fazer.

## Índice dos assuntos

Na ordem do roadmap. Os assuntos sem arquivo ainda não foram estudados.

### 1. Lógica e sintaxe

**[Variables](https://dart.dev/language/variables)** · pasta [`Variaveis/`](Variaveis)

| Subtema | Arquivo | Casos | Documentação |
|---|---|---|---|
| Criando variáveis (introdução) | [CriandoVariaveis.dart](Variaveis/CriandoVariaveis.dart) | 2 | [Variables](https://dart.dev/language/variables) |
| Null safety | [NullSafety.dart](Variaveis/NullSafety.dart) | 6 | [Null safety](https://dart.dev/language/variables#null-safety) |
| Default value | [DefaultValue.dart](Variaveis/DefaultValue.dart) | 4 | [Default value](https://dart.dev/language/variables#default-value) |
| Late variables | [LateVariables.dart](Variaveis/LateVariables.dart) | 4 | [Late variables](https://dart.dev/language/variables#late-variables) |
| Final and const | [FinalAndConst.dart](Variaveis/FinalAndConst.dart) | 13 | [Final and const](https://dart.dev/language/variables#final-and-const) |
| Wildcard variables | [WildcardVariables.dart](Variaveis/WildcardVariables.dart) | 6 | [Wildcard variables](https://dart.dev/language/variables#wildcard-variables) |
| Exercícios de revisão | [Exercicios.dart](Variaveis/Exercicios.dart) | 12 | [Variables](https://dart.dev/language/variables) |

Próximos assuntos:

| Assunto | Subtemas | Documentação |
|---|---|---|
| Built-in types | Numbers, Strings, Booleans, Runes and grapheme clusters, Symbols | [Built-in types](https://dart.dev/language/built-in-types) |
| Collections | Lists, Sets, Maps, Collection elements | [Collections](https://dart.dev/language/collections) |
| Operators | aritméticos, de igualdade e relacionais, de teste de tipo, de atribuição, lógicos, bit a bit, expressões condicionais, cascade, spread | [Operators](https://dart.dev/language/operators) |
| Branches | if/else, switch, guard clause | [Branches](https://dart.dev/language/branches) |
| Loops | for, while e do-while, break e continue, labels | [Loops](https://dart.dev/language/loops) |
| Functions | parâmetros posicionais e nomeados, `main()`, funções anônimas, escopo, closures, retorno, getters e setters, generators | [Functions](https://dart.dev/language/functions) |

### 2. Programação orientada a objetos

| Assunto | Subtemas | Documentação |
|---|---|---|
| Classes | classes e objetos, atributos, métodos, getters e setters, `static` | [Classes](https://dart.dev/language/classes) |
| Constructors | padrão, nomeados, `this.x`, initializer list, `const`, redirecionamento, `factory`, `super` | [Constructors](https://dart.dev/language/constructors) |
| Libraries & imports | encapsulamento com `_`, usar e criar bibliotecas | [Libraries](https://dart.dev/language/libraries) |
| Herança | `extends`, `super`, `@override` | [Extend a class](https://dart.dev/language/extend) |
| Complementares | classes abstratas, interfaces, mixins | [Class modifiers](https://dart.dev/language/class-modifiers) · [Mixins](https://dart.dev/language/mixins) |

## Progresso

| Assunto | Status |
|---|---|
| Variables | concluído (5 de 5 subtemas) |
| Built-in types | estudando (Numbers) |
| Collections | a começar |
| Operators | a começar |
| Branches | a começar |
| Loops | a começar |
| Functions | a começar |
| Orientação a objetos (classes, construtores, bibliotecas, herança) | a começar |

O progresso detalhado, subtema por subtema, fica no roadmap do [meu perfil](https://github.com/IsaacGomes260653#roadmap).

## Referências

- [Documentação oficial da linguagem Dart](https://dart.dev/language): a base de todos os arquivos daqui.
- [Tutorial oficial de Dart](https://dart.dev/learn/tutorial): passo a passo para quem está começando.
- [DartPad](https://dartpad.dev): roda Dart no navegador, sem instalar nada. É onde eu testo cada caso.
- [Trilha de Dart do Exercism](https://exercism.org/tracks/dart): exercícios práticos com correção.

## English summary

My Dart study notes on the road to Flutter. Each language topic is a `.dart` file split into small **cases**, and each case is a complete program with its own `main`, so a whole file does not compile at once — that is on purpose. Copy one case (from its `// ====` header to the end of its `main`) into [DartPad](https://dartpad.dev) and run it. Comments are in Portuguese, and every case states its expected output (`// Saída:`). Topics follow the official [Dart language docs](https://dart.dev/language).
