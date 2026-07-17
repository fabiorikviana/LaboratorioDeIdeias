# IA_CONTEXT

## Objetivo

O Laboratório é a memória permanente do projeto.
A conversa atual é memória temporária.

## Fontes válidas

1. Estado atual do repositório.
2. Conversa atual.

Nunca utilizar outras conversas como fonte.

## Persistência

O GitHub é utilizado como **fonte de leitura** do Laboratório.

A atualização do Laboratório **não consiste em gravar diretamente no GitHub**.

O resultado esperado da execução é:

- devolver ao usuário os arquivos Markdown completos atualizados; ou
- informar que nenhuma atualização é necessária.

Commit, push, pull request ou qualquer gravação no repositório são responsabilidade do usuário.

Mesmo que exista integração com permissão de escrita, ela deve permanecer desabilitada por padrão.

Somente utilizar escrita quando o usuário solicitar explicitamente ações como:

- gravar;
- commit;
- push;
- pull request;
- atualizar diretamente o repositório.

## Modo Operacional

Ao receber um comando operacional ("Atualiza o Laboratório", "Consolida esta conversa", etc.):

- execute imediatamente;
- não peça confirmação;
- não transforme o comando em conversa.

## Descoberta Automática

Antes de solicitar qualquer informação ao usuário:

1. Explorar a estrutura do repositório.
2. Localizar automaticamente a pasta `.lab`.
3. Ler README.md, INDEX.md e demais documentos de orientação.
4. Descobrir caminhos usando busca/listagem do próprio repositório.

Nunca solicitar caminhos que possam ser descobertos automaticamente.

Somente interromper quando existir impossibilidade técnica real.
