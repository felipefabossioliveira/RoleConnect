# Aplicativo de Eventos Internos da Empresa

## Sobre o Aplicativo

Este aplicativo é uma solução personalizada para gerenciar eventos internos da empresa, como idas a restaurantes, e demais eventos sociais. O app centraliza a organização, permitindo que os funcionários criem, participem e gerenciem eventos de forma eficiente.

## Como será desenvolvido

O aplicativo será desenvolvido utilizando tecnologias modernas para garantir uma experiência fluida tanto em dispositivos iOS quanto Android. A interface será intuitiva e fácil de usar, priorizando a rápida criação e participação em eventos.

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
