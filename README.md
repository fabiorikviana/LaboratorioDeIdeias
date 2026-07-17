# Laboratório de Ideias

Este repositório preserva a evolução de ideias, projetos, conceitos e linhas de raciocínio construídos ao longo do tempo.

Ele não funciona apenas como uma coleção de documentos. Seu objetivo é manter uma **memória persistente e organizada**, permitindo que um projeto seja retomado mesmo depois de longos intervalos, mudanças de ferramenta, novas conversas ou perda de contexto.

## Princípio central

A conversa atual é a memória de execução.

O Git é a memória persistente.

```text
Conversa
   ↓
Exploração e amadurecimento
   ↓
Documentação consolidada
   ↓
Commit
   ↓
Nova conversa
   ↓
Leitura da essência preservada
```

Os documentos devem preservar não apenas **o que foi decidido**, mas também:

- a filosofia do projeto;
- a motivação original;
- a lógica por trás das decisões;
- as ideias rejeitadas e seus motivos;
- as dúvidas ainda abertas;
- os próximos passos possíveis;
- a linha de raciocínio necessária para continuar o trabalho.

## Estrutura

```text
Laboratório de Ideias/
│
├── README.md
├── INDEX.md
├── PROJECT_TEMPLATE.md
│
├── Jogos/
│   ├── Consciencia.md
│   └── PST.md
│
├── Software/
├── Engenharia/
├── Estudos/
└── Arquivados/
```

## Fluxo de atualização

Ao final de uma conversa importante:

1. Ler o estado atual do repositório.
2. Identificar projetos novos ou já existentes.
3. Comparar o conhecimento atual com o que já está documentado.
4. Evitar duplicações.
5. Atualizar somente os documentos afetados.
6. Atualizar o `INDEX.md` apenas quando houver inclusão, remoção, mudança de nome, categoria, status ou versão de projeto.
7. Gerar os arquivos completos, nunca apenas fragmentos ou trechos incompletos.
8. Informar claramente o caminho relativo de cada arquivo criado ou modificado.
9. Revisar localmente as mudanças.
10. Fazer o commit e o push pelo repositório local.

## Integração entre ChatGPT e Git

O ChatGPT pode utilizar a integração com o GitHub para consultar o estado real do repositório, localizar documentos e ler o conhecimento já preservado.

O fluxo operacional adotado é:

```text
GitHub
   ↓
Leitura do estado atual
   +
Conversa atual
   ↓
Consolidação do novo conhecimento
   ↓
Arquivos completos criados ou modificados
   ↓
Download para a pasta local do repositório
   ↓
Revisão, commit e push pelo usuário
```

### Responsabilidades

**ChatGPT**

- ler o repositório antes de propor mudanças;
- identificar quais arquivos realmente precisam ser alterados;
- preservar o conteúdo já consolidado;
- incorporar apenas conhecimento novo ou corrigido;
- devolver cada arquivo completo e pronto para substituição;
- informar o caminho exato do arquivo dentro do repositório;
- não simular commits, gravações ou alterações que não tenham sido efetivamente realizadas.

**Usuário**

- baixar os arquivos gerados;
- colocá-los nos caminhos informados dentro do clone local;
- revisar as alterações;
- executar `git add`, `git commit` e `git push`.

## Regra de alteração mínima

Uma atualização do Laboratório não deve reescrever arquivos sem necessidade.

Cada execução deve responder a três perguntas:

1. Existe conhecimento novo relevante?
2. Esse conhecimento já está documentado?
3. Qual é o menor conjunto de arquivos capaz de preservar a evolução?

Quando não houver mudança relevante, nenhum arquivo deve ser gerado.

## Visão futura

À medida que o Laboratório crescer, ele poderá servir também como uma base de conhecimento transversal entre projetos.

Isso permitirá:

- localizar soluções já aplicadas em outros projetos;
- identificar conceitos duplicados;
- apontar documentos desatualizados;
- descobrir relações entre ideias aparentemente separadas;
- sugerir reutilização de arquitetura, regras e padrões;
- atuar como memória histórica para decisões técnicas e conceituais.

O objetivo não é apenas armazenar documentos, mas permitir que o conhecimento acumulado seja consultado, conectado e reutilizado.

## Regra de ouro

> O repositório deve guardar a essência necessária para que uma pessoa ou uma IA consiga compreender o projeto, reconstruir seu contexto e continuar sua evolução.
