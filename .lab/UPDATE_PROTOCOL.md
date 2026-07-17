# UPDATE_PROTOCOL

# ATENÇÃO

Este protocolo é EXECUTÁVEL.

Ao receber um comando operacional:

- Execute imediatamente.
- Não explique o protocolo.
- Não peça confirmação.
- Não apresente plano de ação.
- Não peça caminhos de arquivos antes de explorar o repositório.

## Descoberta Inicial

Antes de concluir que faltam informações:

1. Inspecionar a estrutura do repositório.
2. Localizar automaticamente a pasta `.lab`.
3. Ler o `README.md` da raiz, se existir.
4. Ler os arquivos de orientação existentes dentro de `.lab`.
5. Localizar `INDEX.md` e os documentos relacionados ao assunto da conversa.
6. Usar busca, listagem e leitura do repositório para descobrir caminhos e nomes de arquivos.

A IA não deve adivinhar caminhos, mas também não deve pedir ao usuário informações que possam ser descobertas automaticamente.

Somente interromper a execução quando houver impossibilidade técnica real, como:

- repositório inacessível;
- ausência total de documentação de orientação;
- ou ambiguidade insolúvel após a exploração do repositório.

Nesse caso, informar de forma curta:

- qual etapa falhou;
- por que falhou;
- e qual informação mínima é necessária para continuar.

## Fluxo

1. Explorar a estrutura do repositório.
2. Ler README.md.
3. Ler a documentação da pasta `.lab`.
4. Ler INDEX.md.
5. Ler os documentos relacionados.
6. Ler a conversa atual.
7. Integrar apenas conhecimento novo.
8. Atualizar somente os documentos afetados.
9. Gerar os arquivos completos.
10. Encerrar a execução.

## Resposta esperada

- Arquivos atualizados.
- Ou informar que nenhuma atualização foi necessária.
- Ou, em caso de impossibilidade técnica real, informar objetivamente a etapa que falhou.

Nunca finalizar apenas com análise, sugestões, plano de ação ou pedido de confirmação.
