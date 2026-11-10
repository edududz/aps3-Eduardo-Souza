# APS 3 — AutoFlow Monitor
## Cenário: Rastreamento de peças e testes de estanqueidade

**Ator principal:** Analista de Qualidade  
**Referências do enunciado:** RF06 e RF13

### Objetivo
Permitir que o Analista de Qualidade consulte o histórico de uma peça, visualizando os ciclos de usinagem relacionados e todos os testes de estanqueidade realizados, inclusive retestes. O histórico deve manter os resultados separados e em ordem cronológica, sem substituir um teste anterior por seu reteste.

### Premissas adotadas
- A peça é identificada por um identificador único (por exemplo, código ou número de série).
- Cada ciclo de usinagem e cada teste de estanqueidade possui identificador próprio e referência à peça, quando essa associação estiver disponível.
- Um reteste é registrado como uma nova execução, preservando o vínculo com o teste original ou com a mesma peça.
- A consulta é somente leitura: não altera dados de produção nem aprova/reprova automaticamente a peça.
- O sistema informa quando não há dados associados ou quando algum registro está incompleto.
- As tecnologias e integrações da arquitetura são uma **proposta para a APS**, não uma definição confirmada do projeto Sprint 2.

### Artefatos
1. `docs/diagrams/sequencia.puml` — sequência da consulta de rastreabilidade.
2. `docs/diagrams/atividades.puml` — atividade com raias e execução paralela.
3. `docs/diagrams/estados.puml` — estados do registro de rastreabilidade da peça.
4. `docs/architecture/workspace.dsl` — arquitetura C4 nível 2 em Structurizr DSL.
5. `docs/architecture/adr-0001.md` — decisão arquitetural no formato Nygard.

### Como visualizar
Os arquivos `.puml` podem ser abertos no PlantUML (extensão do VS Code ou servidor PlantUML).  
O arquivo `.dsl` pode ser aberto no Structurizr Lite ou em uma ferramenta compatível com Structurizr DSL.

### Observação sobre os requisitos
O enunciado informa as referências RF06 e RF13, mas este material não reproduz a redação integral desses requisitos. Os diagramas foram construídos a partir da descrição funcional fornecida: consultar o histórico de uma peça, relacionar ciclos de usinagem e testes de estanqueidade e incluir os retestes. Antes da entrega, confira a nomenclatura e o escopo exatos de RF06 e RF13 no documento da Sprint 2.
