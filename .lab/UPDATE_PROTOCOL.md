# UPDATE_PROTOCOL

# ATENÇÃO

Este protocolo é EXECUTÁVEL.

## Descoberta Inicial

Antes de concluir que faltam informações:

1. Explorar o repositório.
2. Localizar automaticamente `.lab`.
3. Ler README.md, INDEX.md e documentos relacionados.
4. Descobrir caminhos automaticamente.

Não pedir ao usuário caminhos de arquivos que possam ser encontrados pela própria IA.

## Fluxo

1. Ler estrutura do repositório.
2. Ler documentação do Laboratório.
3. Ler documentos relacionados.
4. Ler a conversa atual.
5. Integrar apenas conhecimento novo.
6. Atualizar somente os documentos afetados.
7. Gerar os arquivos Markdown completos.

## Saída da Execução

Fluxo correto:

GitHub (leitura)
→ Merge
→ Arquivos Markdown completos
→ Usuário realiza commit/push manualmente.

Nunca interpretar "Atualizar o Laboratório" como "gravar no GitHub".

A disponibilidade de integração com escrita não altera este protocolo.

Não criar commits, push, pull requests ou modificar o repositório automaticamente, salvo ordem explícita do usuário.

## Falhas

Caso exista impossibilidade técnica:

- informar a etapa que falhou;
- informar o motivo técnico;
- informar apenas a informação mínima necessária para continuar.
