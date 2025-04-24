# Aplicativo Rolê Connect

## Sobre o Aplicativo

Este aplicativo é uma solução personalizada para gerenciar eventos internos da empresa, como idas a restaurantes, e demais eventos sociais. O app centraliza a organização, permitindo que os funcionários criem, participem e gerenciem eventos de forma eficiente.

## Como será desenvolvido

O aplicativo será desenvolvido utilizando tecnologias modernas para garantir uma experiência fluida tanto em dispositivos iOS quanto Android. A interface será intuitiva e fácil de usar, priorizando a rápida criação e participação em eventos.

# Nome do time 

**Ghostwalkers's**

Inicialmente, são como fantasmas no sistema - uma presença etérea, sem um time definitivo, navegando pelo desconhecido da hierarquia corporativa. Enquanto aguardam a chegada da tão esperada 'máquina' (seja lá quanto tempo for!), esta equipe não fica parada no limbo organizacional.

Ao contrário, os Ghostwalker's se materializam como um time de desenvolvimento altamente adaptável e focado em aprendizado ágil. Sua missão? Criar aplicativos inovadores que simplificarão drasticamente a vida de todos na empresa.

Com a agilidade de um Jedi e a capacidade de se adaptar como verdadeiros fantasmas, eles se movem rapidamente entre projetos, deixando para trás soluções brilhantes antes de desaparecer para sua próxima aventura digital.

Embora sua permanência em cada projeto seja tão breve quanto um holograma de R2-D2, o impacto de suas entregas é tão duradouro quanto a Força. Prontos para enfrentar qualquer desafio de codificação, os Ghostwalker's são os heróis não celebrados do desenvolvimento interno, transformando ideias em realidade digital com a velocidade da luz.

# Interfaces/Funcionalidades

## 1. Tela de Login/Registro
📌 **Objetivo:** Autenticar o usuário com as credenciais da empresa.

🔹 **Componentes:**
- Login com e-mail corporativo
- Integração com sistema de autenticação da empresa (SSO)

## 2. Tela Inicial (Dashboard)
📌 **Objetivo:** Exibir uma visão geral dos eventos próximos e opções principais.

🔹 **Componentes:**
- Lista de próximos eventos
- Botão de "Criar Novo Evento"
- Saldo disponível do budget mensal (R$ 220)
- Notificações de novos eventos ou atualizações

## 3. Tela de Criação de Evento
📌 **Objetivo:** Permitir que qualquer funcionário crie um novo evento.

🔹 **Componentes:**
- Nome do evento
- Data e hora
- Local (com integração de mapa)
- Imagem (Serão oferecidos algumas imagens geradas por IA)
- Limite de participantes
- Orçamento por pessoa
- Opção para oferecer ou solicitar carona
- Descrição do evento
- Tags (ex: jantar, happy hour, esporte)

## 4. Tela de Detalhes do Evento
📌 **Objetivo:** Mostrar todas as informações sobre um evento específico.

🔹 **Componentes:**
- Todas as informações inseridas na criação
- Lista de participantes confirmados
- Opção de confirmar participação
- Seção de caronas disponíveis
- Chat do evento para comunicação entre participantes
- Opção de cancelar participação

## 4.1 Tela Eventos em Lista
📌 **Objetivo:** Mostrar todos os eventos em formato de lista

🔹 **Componentes:**
- Campo de pesquisa
- Filtros (Indefinidos)
- Lista de eveventos

## 5. Tela de Gerenciamento de Budget
📌 **Objetivo:** Permitir que os usuários acompanhem seu orçamento mensal para eventos.

🔹 **Componentes:**
- Saldo atual
- Histórico de gastos
- Previsão de gastos futuros (baseado em eventos confirmados)
- Gráfico de utilização do budget ao longo do mês

## 6. Tela de Caronas
📌 **Objetivo:** Facilitar a organização de caronas para os eventos.

🔹 **Componentes:**
- Lista de caronas oferecidas
- Opção de oferecer carona (número de vagas, ponto de partida)
- Opção de solicitar carona
- Mapa com rotas das caronas oferecidas

## 7. Tela de Perfil do Usuário
📌 **Objetivo:** Gerenciar informações pessoais e preferências.

🔹 **Componentes:**
- Informações básicas (nome, departamento)
- Preferências alimentares
- Histórico de eventos participados
- Configurações de notificações

## 8. Tela de Histórico de Eventos
📌 **Objetivo:** Mostrar um registro de todos os eventos passados.

🔹 **Componentes:**
- Lista de eventos passados
- Opção de avaliar eventos passados
- Fotos compartilhadas dos eventos (se aplicável)

## 9. Notificações e Alertas
📌 **Objetivo:** Manter os usuários informados sobre atualizações de eventos.

🔹 **Componentes:**
- Notificações push para novos eventos
- Lembretes de eventos próximos
- Alertas de mudanças em eventos (local, horário, etc.)
- Notificações de confirmações de carona

## 10. Painel de Administração (para RH ou organizadores principais)
📌 **Objetivo:** Permitir uma visão geral e gestão de todos os eventos.

🔹 **Componentes:**
- Visão geral de todos os eventos
- Relatórios de participação
- Gestão de orçamentos
- Opção de destacar eventos importantes

Excelente sugestão! Vamos adicionar uma funcionalidade para armazenar e compartilhar fotos de eventos específicos. Isso ajudará a criar memórias e aumentar o engajamento dos funcionários. Vou incluir uma nova seção no documento para cobrir essa funcionalidade:

## 11. Galeria de Fotos do Evento
📌 **Objetivo:** Permitir que os participantes compartilhem e visualizem fotos de eventos específicos.

🔹 **Componentes:**
- **Upload de Fotos**: 
  - Botão para carregar fotos diretamente do dispositivo
  - Opção de tirar foto na hora e fazer upload
  - Possibilidade de adicionar legendas às fotos

- **Visualização de Galeria**:
  - Grade de miniaturas das fotos do evento
  - Opção de visualização em tela cheia
  - Funcionalidade de slideshow

- **Organização das Fotos**:
  - Agrupamento automático por evento
  - Tags para categorizar fotos (ex: "comida", "grupo", "decoração")
  - Ordenação por data de upload ou por popularidade

- **Interação Social**:
  - Opção de curtir fotos
  - Espaço para comentários em cada foto
  - Possibilidade de marcar colegas nas fotos

- **Privacidade e Compartilhamento**:
  - Configurações de privacidade (visível apenas para participantes do evento ou para toda a empresa)
  - Opção de compartilhar fotos específicas em outras redes sociais ou por e-mail
  - Funcionalidade para solicitar aprovação antes de publicar fotos com outras pessoas

- **Gerenciamento de Armazenamento**:
  - Indicador de espaço usado/disponível para fotos
  - Opção de compressão automática para otimizar o armazenamento
  - Possibilidade de fazer download de todas as fotos do evento em um arquivo zip

- **Destaques e Álbuns**:
  - Criação de álbuns temáticos dentro do evento
  - Seleção de fotos em destaque para a página principal do evento

- **Integração com Tela de Detalhes do Evento**:
  - Miniatura da galeria na tela de detalhes do evento
  - Link direto para a galeria completa

## 12. Sistema de Votação
📌 **Objetivo:** Facilitar decisões de grupo para eventos futuros.

🔹 **Componentes:**
- Criação de enquetes para escolha de local, data ou tipo de evento
- Opções de votação anônima ou aberta
- Visualização em tempo real dos resultados
- Notificação automática quando a votação é encerrada

## 13. Integração com Sistemas de Reserva
📌 **Objetivo:** Simplificar o processo de reserva em restaurantes ou locais de eventos.

🔹 **Componentes:**
- Integração com APIs de serviços de reserva populares
- Botão de "Fazer Reserva" diretamente na página do evento
- Confirmação automática da reserva para todos os participantes

## 14. Split de Conta Automático
📌 **Objetivo:** Facilitar a divisão de despesas após os eventos.

🔹 **Componentes:**
- Entrada de valores gastos individualmente
- Cálculo automático da divisão baseado no consumo de cada um
- Histórico de despesas por evento

## 15. Enquetes Pós-Evento
📌 **Objetivo:** Coletar feedback para melhorar futuros eventos.

🔹 **Componentes:**
- Formulário personalizado de feedback
- Avaliação por estrelas para diferentes aspectos do evento
- Espaço para sugestões e comentários
- Análise e relatórios de satisfação para organizadores

## 16. Sistema de Badges e Recompensas
📌 **Objetivo:** Incentivar participação ativa e organização de eventos.

🔹 **Componentes:**
- Badges para diferentes conquistas (ex: "Organizador do Mês", "Participante Frequente")
- Sistema de pontos baseado em participação e organização
- Ranking de funcionários mais ativos
- Recompensas exclusivas para top participantes (ex: escolha prioritária no próximo evento)

## 17. Calendário Integrado
📌 **Objetivo:** Facilitar o planejamento e visualização de eventos futuros.

🔹 **Componentes:**
- Visualização de calendário com todos os eventos programados
- Opção de sincronização com calendários pessoais (Google, Outlook)
- Filtros por tipo de evento, departamento ou organizador
- Lembretes personalizáveis para eventos

## 18. Recomendações Personalizadas
📌 **Objetivo:** Sugerir eventos relevantes com base nas preferências do usuário.

🔹 **Componentes:**
- Algoritmo de recomendação baseado em histórico de participação
- Sugestões de eventos similares aos favoritos do usuário
- Opção de definir preferências manualmente (tipos de comida, atividades)
- Notificações personalizadas para eventos recomendados

## 19. Check-in no Local
📌 **Objetivo:** Confirmar presença e facilitar o início dos eventos.

🔹 **Componentes:**
- Botão de check-in disponível apenas na localização do evento
- Registro de horário de chegada
- Lista de participantes presentes para o organizador
- Notificação para participantes atrasados

## 20. Mini-Jogos e Quiz
📌 **Objetivo:** Aumentar o engajamento e a interação durante os eventos.

🔹 **Componentes:**
- Quiz temáticos relacionados ao evento ou à empresa
- Jogos rápidos para momentos de espera (ex: durante o pedido em um restaurante)
- Placar de líderes para jogos competitivos
- Opção de criar jogos personalizados para team building

## 21. Seção "Ideias para Eventos"
📌 **Objetivo:** Permitir que funcionários sugiram e votem em novos tipos de eventos.

🔹 **Componentes:**
- Formulário para submissão de ideias de eventos
- Sistema de votação para ideias populares
- Categorização de ideias (esportes, cultura, gastronomia, etc.)
- Notificação para criadores quando suas ideias são escolhidas

## 22. Grupos para Eventos Competitivos
📌 **Objetivo:** Facilitar a organização de eventos em equipe ou competições.

🔹 **Componentes:**
- Criação de equipes para eventos específicos
- Painel de gerenciamento de equipe para capitães
- Placar para eventos competitivos
-Chat de grupo para membros da equipe

## 23. Feedback Anônimo
📌 **Objetivo:** Permitir comentários sinceros sobre eventos ou discussões sensíveis.

🔹 **Componentes:**
- Opção de envio de feedback anônimo após eventos
- Garantia de anonimato na interface
- Análise de sentimentos para feedbacks recebidos
- Relatórios agregados para organizadores, mantendo o anonimato individual
- 

## 24. Dashboard de Gerência
📌 **Objetivo:** Fornecer uma visão geral abrangente para a equipe de gerência sobre o uso do aplicativo e o engajamento dos funcionários em eventos. Tendo a possibilidade de exportar para CSV / Excel wathever.

🔹 **Componentes:**

### Visão Geral Financeira
- **Gasto Total Mensal**: Gráfico mostrando gastos totais por mês
- **Comparação de Orçamento**: Gastos reais vs. orçamento planejado
- **Gasto Médio por Evento**: Análise de custos por tipo de evento
- **Utilização do Budget Individual**: Porcentagem média de utilização do orçamento mensal por funcionário

### Métricas de Participação
- **Total de Eventos**: Número de eventos realizados por mês/trimestre
- **Taxa de Participação**: Porcentagem de funcionários participando em eventos
- **Eventos Mais Populares**: Ranking dos eventos com maior participação
- **Frequência de Participação**: Gráfico mostrando quantos eventos em média cada funcionário participa

### Análise de Engajamento
- **Criadores de Eventos Mais Ativos**: Top funcionários que organizam eventos
- **Departamentos Mais Engajados**: Ranking de departamentos por participação em eventos
- **Tendências de Tipos de Eventos**: Gráfico mostrando popularidade de diferentes categorias de eventos ao longo do tempo

### Feedback e Satisfação
- **Nota Média de Satisfação**: Pontuação geral dos eventos baseada em feedbacks
- **Análise de Sentimento**: Visão geral do sentimento dos comentários (positivo, neutro, negativo)
- **Sugestões Mais Votadas**: Top ideias para novos eventos da seção "Ideias para Eventos"

### Uso do Aplicativo
- **Usuários Ativos**: Número de usuários ativos diários/mensais
- **Funcionalidades Mais Utilizadas**: Ranking das features mais populares do app
- **Tempo Médio de Uso**: Duração média das sessões no aplicativo

### Relatórios Personalizáveis
- **Filtros por Data**: Capacidade de visualizar dados em diferentes períodos
- **Filtros por Departamento**: Análise segmentada por departamentos específicos
- **Exportação de Dados**: Opção para exportar relatórios em diferentes formatos (PDF, Excel)

### Alertas e Notificações
- **Alertas de Orçamento**: Notificações quando o gasto se aproxima ou excede o limite
- **Flags de Baixo Engajamento**: Alertas para departamentos ou indivíduos com participação decrescente
- **Lembretes de Revisão**: Notificações para revisar eventos com feedback negativo

🔹 **Recursos Adicionais:**
- Painéis customizáveis para diferentes níveis de gerência
- Visualizações interativas com drill-down para análises mais detalhadas
- Opção de configurar relatórios automáticos enviados por e-mail
- Integração com outras ferramentas de BI da empresa, se aplicável
