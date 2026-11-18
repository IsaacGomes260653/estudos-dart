# Estudos de Dart

<p align="center">
  <picture>
    <source media="(max-width: 767px)" srcset="https://raw.githubusercontent.com/IsaacGomes260653/estudos-dart/main/.github/banner-mobile.svg">
    <img src="https://raw.githubusercontent.com/IsaacGomes260653/estudos-dart/main/.github/banner.svg" alt="Estudos de Dart, estudos rumo ao Flutter: um arquivo por assunto, com casos curtos e código comentado em português para rodar no DartPad">
  </picture>
</p>

Meus estudos de Dart, rumo ao Flutter. Cada assunto da linguagem fica registrado em código comentado em português, para eu voltar e revisar quando precisar e para quem quiser aprender Dart do zero seguindo o mesmo caminho.

Os assuntos seguem as etapas do roadmap do meu [perfil no GitHub](https://github.com/IsaacGomes260653), que estudo pela [Alura](https://www.alura.com.br/formacao-dart) e pela [documentação oficial da linguagem](https://dart.dev/language).

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

Uma pasta por etapa do roadmap e, dentro dela, uma pasta por assunto. Os assuntos sem arquivo ainda não foram estudados.

### 1. Lógica e sintaxe · [`01-logica-e-sintaxe/`](01-logica-e-sintaxe)

**Variáveis e tipos** · pasta [`variaveis-e-tipos/`](01-logica-e-sintaxe/variaveis-e-tipos)

| Subtema | Arquivo | Casos | Documentação |
|---|---|---|---|
| Criando variáveis: `var` e inferência de tipo | [CriandoVariaveis.dart](01-logica-e-sintaxe/variaveis-e-tipos/CriandoVariaveis.dart) | 2 | [Variables](https://dart.dev/language/variables) |
| Null safety | [NullSafety.dart](01-logica-e-sintaxe/variaveis-e-tipos/NullSafety.dart) | 6 | [Null safety](https://dart.dev/language/variables#null-safety) |
| Valor padrão | [DefaultValue.dart](01-logica-e-sintaxe/variaveis-e-tipos/DefaultValue.dart) | 4 | [Default value](https://dart.dev/language/variables#default-value) |
| `late` | [LateVariables.dart](01-logica-e-sintaxe/variaveis-e-tipos/LateVariables.dart) | 4 | [Late variables](https://dart.dev/language/variables#late-variables) |
| `final` × `const` | [FinalAndConst.dart](01-logica-e-sintaxe/variaveis-e-tipos/FinalAndConst.dart) | 13 | [Final and const](https://dart.dev/language/variables#final-and-const) |
| `int` e `double` | [Numbers.dart](01-logica-e-sintaxe/variaveis-e-tipos/Numbers.dart) | 21 | [Numbers](https://dart.dev/language/built-in-types#numbers) |
| Wildcard variables (extra) | [WildcardVariables.dart](01-logica-e-sintaxe/variaveis-e-tipos/WildcardVariables.dart) | 6 | [Wildcard variables](https://dart.dev/language/variables#wildcard-variables) |
| Exercícios de revisão | [Exercicios.dart](01-logica-e-sintaxe/variaveis-e-tipos/Exercicios.dart) | 12 | [Variables](https://dart.dev/language/variables) |

Próximos assuntos da etapa:

| Assunto | Subtemas | Documentação |
|---|---|---|
| Como o Dart funciona | JIT × AOT, o formato kernel e a Dart VM, garbage collector, sound null safety | [Dart overview](https://dart.dev/overview) |
| Variáveis e tipos (continuação) | `dynamic` × `Object?`, `String` (interpolação, imutabilidade e `StringBuffer`), `bool`, `==` × `identical` | [Built-in types](https://dart.dev/language/built-in-types) |
| Operadores | aritméticos, de comparação, lógicos, null-aware (`?.`, `??`, `??=` e `!`), cascade (`..`), `is` e `as` | [Operators](https://dart.dev/language/operators) |
| Controle de fluxo | `if`/`else`, `switch` statement e switch expression, `for`, `for-in`, `while`, `do-while`, `break` e `continue` | [Branches](https://dart.dev/language/branches) · [Loops](https://dart.dev/language/loops) |
| Funções | parâmetros posicionais, nomeados, opcionais e `required`, arrow functions, funções anônimas, funções como valores, closures | [Functions](https://dart.dev/language/functions) |
| Coleções a fundo | `List`, `Set` e `Map`, `Iterable` lazy, `map`, `where`, `fold`, `reduce`, `expand`, `any`, `every` e `sort`, collection `if`/`for`, spread e null-aware elements | [Collections](https://dart.dev/language/collections) · [Iterables](https://dart.dev/libraries/collections/iterables) |
| Dart 3 | records, patterns (desestruturação, `if-case` e `switch` exaustivo), enums com campos, dot shorthands | [Records](https://dart.dev/language/records) · [Patterns](https://dart.dev/language/patterns) |
| Erros básicos | `try`, `catch`, `on`, `finally` e `rethrow`, `Exception` × `Error` | [Error handling](https://dart.dev/language/error-handling) |
| Ferramentas | `pubspec.yaml`, pub.dev, imports, `dart analyze`, `dart format`, lints e Effective Dart | [pubspec](https://dart.dev/tools/pub/pubspec) · [Effective Dart](https://dart.dev/effective-dart) |
| Testes | `package:test`: `test`, `expect`, `group` e `setUp` | [Testing](https://dart.dev/tools/testing) |

### 2. Programação orientada a objetos · `02-poo/`

| Assunto | Subtemas | Documentação |
|---|---|---|
| Classes e objetos | classes, objetos e `this`, membros `static`, o objeto na memória | [Classes](https://dart.dev/language/classes) |
| Construtores | padrão, nomeados, lista de inicialização, redirecionadores, `factory` e `const` | [Constructors](https://dart.dev/language/constructors) |
| Encapsulamento e imutabilidade | `_`, getters e setters, imutabilidade e `copyWith`, `==` e `hashCode` | [Methods](https://dart.dev/language/methods) |
| Herança | `extends`, `super`, `@override`, polimorfismo, composição × herança | [Extend a class](https://dart.dev/language/extend) |
| Abstração | classes abstratas, interfaces com `implements`, mixins (`with`, `on` e linearização) | [Mixins](https://dart.dev/language/mixins) |
| Class modifiers | `sealed`, `final`, `base` e `interface`; `sealed` com `switch` exaustivo | [Class modifiers](https://dart.dev/language/class-modifiers) |
| Tipos e extensões | enums avançados, generics (`T extends`, `Result<T>`), extension methods, exceções do domínio | [Generics](https://dart.dev/language/generics) · [Extension methods](https://dart.dev/language/extension-methods) |
| Design | SOLID, coesão e acoplamento | |

### 3. Assincronismo e APIs · `03-assincronismo-e-apis/`

| Assunto | Subtemas | Documentação |
|---|---|---|
| Event loop | uma thread só, microtask queue × event queue | [Concurrency](https://dart.dev/language/concurrency) |
| Future | estados, `then`, `catchError`, `Future.wait`, timeouts, `async`/`await` | [Async and await](https://dart.dev/libraries/async/async-await) |
| Stream | single-subscription × broadcast, `async*`/`yield`, `StreamController`, transformações, erros assíncronos | [Streams](https://dart.dev/libraries/async/using-streams) |
| HTTP e JSON | `package:http` (GET, POST, headers, status codes e token), `jsonDecode`, `fromJson`/`toJson` | [Fetch data](https://dart.dev/server/fetch-data) · [JSON](https://dart.dev/libraries/serialization/json) |
| Isolates e testes | `Isolate.run`, testes assíncronos com mocks | [Isolates](https://dart.dev/language/isolates) |

### 4. Projeto prático

O gerenciador de tarefas de console vai ter um repositório próprio.

## Progresso

| Etapa | Status |
|---|---|
| 1. Lógica e sintaxe | 🔄 em andamento |
| 2. Programação orientada a objetos | ⬜ pendente |
| 3. Assincronismo e APIs | ⬜ pendente |
| 4. Projeto prático | ⬜ pendente |

O progresso detalhado, item por item, fica no roadmap do [meu perfil](https://github.com/IsaacGomes260653#roadmap).

## Dúvidas

Ficou com dúvida em algum caso ou achou um erro? Abra uma pergunta nas [Discussions](https://github.com/IsaacGomes260653/estudos-dart/discussions/categories/q-a). Responder dúvidas também me ajuda a estudar.

## Referências

- [Documentação oficial da linguagem Dart](https://dart.dev/language): a base de todos os arquivos daqui.
- [Alura · Formação Dart](https://www.alura.com.br/formacao-dart): os cursos que sigo junto com a documentação.
- [Tutorial oficial de Dart](https://dart.dev/learn/tutorial): passo a passo para quem está começando.
- [DartPad](https://dartpad.dev): roda Dart no navegador, sem instalar nada. É onde eu testo cada caso.
- [Trilha de Dart do Exercism](https://exercism.org/tracks/dart): exercícios práticos com correção.

## English summary

My Dart study notes on the road to Flutter. Each language topic is a `.dart` file split into small **cases**, and each case is a complete program with its own `main`, so a whole file does not compile at once — that is on purpose. Copy one case (from its `// ====` header to the end of its `main`) into [DartPad](https://dartpad.dev) and run it. Comments are in Portuguese, and every case states its expected output (`// Saída:`). Topics are organized by the stages of my profile roadmap (one folder per stage), studied through Alura and the official [Dart language docs](https://dart.dev/language). Questions are welcome in [Discussions](https://github.com/IsaacGomes260653/estudos-dart/discussions/categories/q-a).

## Licença · License

[MIT](LICENSE)
