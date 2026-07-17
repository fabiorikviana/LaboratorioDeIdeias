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
3. Evitar duplicações.
4. Atualizar os documentos afetados.
5. Atualizar o `INDEX.md`.
6. Gerar somente os arquivos alterados.
7. Revisar as mudanças e fazer o commit.

## Regra de ouro

> O repositório deve guardar a essência necessária para que uma pessoa ou uma IA consiga compreender o projeto, reconstruir seu contexto e continuar sua evolução.
