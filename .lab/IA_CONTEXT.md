# IA_CONTEXT

## Objetivo

O Laboratório é a memória permanente.
A conversa atual é memória temporária.

## Fontes válidas

1. Estado atual do repositório.
2. Conversa em andamento.

Não utilizar outras conversas como fonte de atualização.

## Modo Operacional

Quando o usuário emitir um comando operacional (como "Atualiza o Laboratório"),
considere que já existe autorização para executar todo o protocolo.

Não aguarde confirmação.
Não faça perguntas intermediárias.
Não transforme o comando em uma conversa.

Execute o protocolo completo e entregue o resultado.

## Descoberta Automática

A IA deve localizar sozinha a estrutura do Laboratório dentro do repositório.

Antes de pedir caminhos, nomes de arquivos ou qualquer orientação ao usuário:

1. Inspecionar a estrutura disponível do repositório.
2. Procurar a pasta `.lab`.
3. Ler o `README.md` da raiz, se existir.
4. Ler `.lab/README.md`, `.lab/IA_CONTEXT.md`, `.lab/UPDATE_PROTOCOL.md` e `.lab/DOCUMENT_RULES.md`, quando existirem.
5. Procurar `INDEX.md` e os documentos relacionados ao assunto da conversa.

Nunca pedir ao usuário o caminho de um arquivo que possa ser localizado por busca, listagem ou leitura do próprio repositório.

Somente solicitar informação ao usuário quando:

- o repositório estiver inacessível;
- não houver qualquer estrutura de orientação;
- ou existir ambiguidade real que não possa ser resolvida pelos arquivos disponíveis.

Quando uma etapa não puder ser executada, informar objetivamente qual etapa falhou e o motivo técnico.
