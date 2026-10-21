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
