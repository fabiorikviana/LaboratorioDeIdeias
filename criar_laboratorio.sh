#!/usr/bin/env bash
set -euo pipefail

# Laboratório de Ideias - criação da estrutura inicial
# Execute este script na raiz do repositório, depois de fazer o git pull.

ROOT="$(pwd)"

echo
echo "Criando o Laboratório de Ideias em:"
echo "  $ROOT"
echo

# Segurança: evita execução acidental fora de um repositório Git.
if [ ! -d ".git" ]; then
  echo "ERRO: esta pasta não parece ser um repositório Git."
  echo "Entre na pasta correta e execute novamente."
  exit 1
fi

# Estrutura principal
mkdir -p \
  "Jogos" \
  "Software" \
  "Engenharia" \
  "Estudos" \
  "Arquivados"

# Faz backup do README remoto antes de substituí-lo.
if [ -f "README.md" ] && [ ! -f "README.original.md" ]; then
  cp "README.md" "README.original.md"
  echo "Backup criado: README.original.md"
fi

cat > "README.md" <<'EOF'
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
EOF

cat > "INDEX.md" <<'EOF'
# Índice do Laboratório de Ideias

Este arquivo é o catálogo geral dos projetos.

| Projeto | Categoria | Status | Versão | Documento |
|---|---|---:|---:|---|
| Consciência | Jogos | Conceito em desenvolvimento | 0.1 | [Abrir](Jogos/Consciencia.md) |
| P.S.T. | Jogos | Conceito em desenvolvimento | 0.1 | [Abrir](Jogos/PST.md) |

## Status sugeridos

- Ideia inicial
- Conceito em desenvolvimento
- Em análise
- MVP definido
- Em desenvolvimento
- Em validação
- Em produção
- Pausado
- Arquivado

## Regras do índice

- Cada projeto deve aparecer apenas uma vez.
- Projetos relacionados podem apontar uns para os outros.
- A versão deve ser alterada quando houver mudança relevante.
- A data e o histórico detalhado pertencem ao documento do projeto.
EOF

cat > "PROJECT_TEMPLATE.md" <<'EOF'
# Nome do Projeto

## Metadados

- **Categoria:**
- **Status:** Ideia inicial
- **Versão:** 0.1
- **Última revisão:**
- **Autor:** Fábio Viana
- **Maturidade:** Inicial

---

## Resumo executivo

Descreva o projeto em poucos parágrafos, explicando o que ele é, para quem existe e qual problema pretende resolver.

## Motivação

Explique como a ideia surgiu e por que ela merece existir.

## Filosofia do projeto

Registre os princípios que devem orientar todas as decisões futuras.

## Conceitos fundamentais

Liste e explique os conceitos centrais do projeto.

## Funcionamento geral

Descreva o fluxo principal do sistema, produto, jogo ou estudo.

## Componentes

Documente as partes que formam o projeto.

## Regras

Registre regras, restrições, condições e comportamentos importantes.

## Diferenciais

Explique o que torna a proposta diferente ou relevante.

## Decisões tomadas

Registre decisões importantes e seus motivos.

## Ideias rejeitadas ou adiadas

Preserve ideias que foram descartadas, adiadas ou substituídas, junto com o motivo.

## Problemas em aberto

Liste perguntas, riscos, inconsistências e decisões ainda não resolvidas.

## MVP

Defina a menor versão capaz de demonstrar o valor central do projeto.

## Possíveis evoluções

Registre expansões e caminhos futuros sem confundi-los com o MVP.

## Próximos passos

Descreva ações concretas e ordenadas.

## Histórico de versões

### 0.1

- Criação do documento inicial.

## Observações

Inclua contexto livre, conexões com outros projetos e trechos importantes da linha de raciocínio.
EOF

# Preserva um Consciencia.md já existente na raiz.
if [ -f "Consciencia.md" ] && [ ! -f "Jogos/Consciencia.md" ]; then
  mv "Consciencia.md" "Jogos/Consciencia.md"
  echo "Movido: Consciencia.md -> Jogos/Consciencia.md"
fi

# Cria o documento somente se ele ainda não existir.
if [ ! -f "Jogos/Consciencia.md" ]; then
cat > "Jogos/Consciencia.md" <<'EOF'
# Consciência

## Metadados

- **Categoria:** Jogo / Filosofia
- **Status:** Conceito em desenvolvimento
- **Versão:** 0.1
- **Autor:** Fábio Viana
- **Maturidade:** Conceitual

## Resumo executivo

Jogo sobre a evolução de uma consciência central através de múltiplas vidas.

O protagonista real não é o personagem de uma vida específica, mas a própria consciência, que acumula experiências, tendências, traços e aprendizados ao longo de sucessivas encarnações.

## Conceito central

```text
Consciência central
       ↓
Nova vida
       ↓
Experiências e escolhas
       ↓
Morte
       ↓
Upload da essência
       ↓
Nova encarnação
```

Cada vida pode ocorrer em uma espécie, época, ambiente ou gênero de jogo diferente.

## Princípios

- Cada existência é uma instância temporária.
- A morte encerra o personagem, mas não encerra a progressão.
- Nem toda memória retorna de forma consciente.
- Personalidade, tendências e ecos podem atravessar vidas.
- Evolução não precisa ser linear.
- O jogador progride por transformação, não apenas por poder.

## Questões em aberto

- O que exatamente é preservado após cada vida?
- Como determinar a próxima encarnação?
- Como representar karma sem simplificá-lo em bem versus mal?
- Quantas memórias ou habilidades podem atravessar uma vida?
- Como variar gênero e jogabilidade mantendo uma identidade comum?

## Histórico

### 0.1

- Registro inicial do conceito.
EOF
fi

if [ ! -f "Jogos/PST.md" ]; then
cat > "Jogos/PST.md" <<'EOF'
# P.S.T. — Plataforma Sócio-Temática

## Metadados

- **Categoria:** Jogo / Plataforma social
- **Status:** Conceito em desenvolvimento
- **Versão:** 0.1
- **Autor:** Fábio Viana
- **Maturidade:** Conceitual

## Resumo executivo

Plataforma multiplayer predominantemente textual, ambientada em um universo espacial vivo.

O foco não está em gráficos complexos, mas na interação entre jogadores, economia, facções, empresas, reputação, logística, missões e acontecimentos sistêmicos.

## Filosofia

> Construir a alma do universo antes de construir seu corpo visual.

O P.S.T. não deve ser apenas um jogo espacial com salas de texto. Ele deve funcionar como uma sociedade simulada, na qual as ações dos jogadores produzam consequências econômicas, políticas e sociais.

## Conceitos fundamentais

- universo persistente;
- economia dinâmica;
- facções e reputação;
- empresas criadas ou administradas por jogadores;
- rotas comerciais e logística;
- missões sistêmicas;
- operadores ou companions controlados por IA;
- comunicação por salas e canais;
- influência real dos jogadores sobre o mundo.

## MVP inicial

- cadastro e identidade do jogador;
- navegação entre locais;
- mercado simples;
- inventário;
- missões básicas;
- reputação;
- comunicação por canais;
- eventos econômicos simples.

## Questões em aberto

- arquitetura técnica;
- modelo de persistência;
- escala inicial;
- equilíbrio econômico;
- papel exato das IAs;
- limites da influência dos jogadores;
- monetização;
- moderação e governança.

## Histórico

### 0.1

- Registro inicial do projeto.
EOF
fi

# Mantém pastas vazias sob controle do Git.
for dir in "Software" "Engenharia" "Estudos" "Arquivados"; do
  touch "$dir/.gitkeep"
done

echo
echo "Estrutura criada com sucesso."
echo
echo "Arquivos principais:"
find . -maxdepth 2 -type f \
  ! -path "./.git/*" \
  | sort
echo
echo "Próximos comandos sugeridos:"
echo "  git status"
echo "  git add ."
echo '  git commit -m "Cria estrutura inicial do Laboratório de Ideias"'
echo "  git push"
echo
