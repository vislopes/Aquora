# 💧 Aquora

**Aquora** é um aplicativo mobile desenvolvido em Flutter para monitoramento ambiental agrícola, voltado para micro e pequenos produtores rurais.  
A plataforma integra dados de sensores, índices de vegetação, clima e alertas inteligentes para auxiliar na tomada de decisão no campo.

---

## 🌾 Visão do Projeto

O objetivo do Aquora é transformar dados agrícolas em informações visuais e acionáveis, ajudando produtores a:

- Monitorar condições climáticas em tempo real
- Acompanhar saúde do solo e das culturas
- Receber alertas preventivos
- Planejar irrigação, colheita e manejo agrícola

---

## 📱 Funcionalidades

### 🔐 Autenticação
- Login de usuário
- Cadastro de conta
- Navegação segura entre telas

---

### 📊 Dashboard
- Visão geral da fazenda
- Métricas ambientais:
  - Temperatura
  - Umidade
  - NDVI
  - Vento
  - Chuva
- Mapa simplificado da propriedade
- Alertas recentes
- Previsão do tempo resumida

---

### 🌱 Dados da Fazenda
- Informações da propriedade
- Índices de vegetação:
  - NDVI
  - NDRE
  - EVI
- Condições do solo:
  - Umidade por zona
  - Temperatura do solo
  - pH
  - NPK estimado
- Histórico e gráficos de umidade

---

### ⚠️ Alertas & Recomendações
- Alertas críticos (geada, tempestades, etc.)
- Avisos agronômicos (NDVI baixo, déficit hídrico)
- Recomendações agrícolas (colheita, adubação)
- Informações de sensores

---

### 🌦️ Previsão do Tempo
- Condição atual do clima
- Previsão diária e semanal
- Temperatura máxima e mínima
- Probabilidade de chuva
- Recomendações agrícolas baseadas no clima

---

## 🧱 Tecnologias Utilizadas

- Flutter
- Dart
- Material Design 3
- StatefulWidget & StatelessWidget
- Navegação com BottomNavigationBar
- Arquitetura modular de widgets

---

## 📂 Estrutura do Projeto
lib/
├── main.dart
├── login_page.dart
├── home_page.dart
├── dashboard_page.dart
├── dados_fazenda_page.dart
├── alertas_page.dart
├── previsao_tempo_page.dart
├── widgets/
│ └── alert_widgets.dart

---

## 🎨 Design System

- 🎨 Cor primária: `#004B83` (Azul agrícola)
- 🌿 Cor secundária: `#288B2D` (Verde agrícola)
- 🖼 Fundo claro para melhor leitura
- 📱 Interface mobile-first
- 🧭 Botões grandes e acessíveis
- 📊 Cards para visualização de dados

---

## 🧭 Navegação

O app utiliza uma navegação inferior (Bottom Navigation Bar):

- 🏠 Início (Dashboard)
- 🌱 Fazenda (Dados da propriedade)
- ⚠️ Alertas
- 🌦 Tempo

---

## 🚀 Objetivo Futuro

- Integração com sensores IoT reais
- Backend com Firebase ou Supabase
- Mapas interativos da propriedade
- Sistema de notificações push
- Machine Learning para previsão agrícola
- Dashboard web para gestão completa

---

## 👨‍🌾 Público-Alvo

- Pequenos e médios produtores rurais
- Agrônomos
- Cooperativas agrícolas
- Startups de agrotecnologia

---

## 📸 Interface

*(adicione aqui prints do app quando possível)*

---

## 📌 Status do Projeto

🚧 Em desenvolvimento ativo  
✔ Protótipo funcional em Flutter  
✔ Telas principais implementadas  
⏳ Integração com backend futura

---

## 💡 Autor

Desenvolvido como projeto de estudo e evolução em Flutter com foco em agrotecnologia e sistemas inteligentes para o campo.

--------- English Version:
# 💧 Aquora

**Aquora** is a Flutter-based mobile application designed for environmental and agricultural monitoring.  
It is focused on small and medium-sized farmers, providing real-time insights from environmental data, crop indices, and smart alerts.

---

## 🌾 Project Overview

Aquora transforms agricultural data into actionable insights to support better decision-making in the field.

The system helps farmers to:

- Monitor weather conditions in real time
- Track soil and crop health
- Receive intelligent alerts and recommendations
- Plan irrigation, harvesting, and crop management efficiently

---

## 📱 Features

### 🔐 Authentication
- User login
- Account registration
- Secure navigation between screens

---

### 📊 Dashboard
- Farm overview panel
- Environmental metrics:
  - Temperature
  - Humidity
  - NDVI
  - Wind speed
  - Rain forecast
- Farm map preview
- Recent alerts
- Weather summary

---

### 🌱 Farm Data
- Property information overview
- Vegetation indices:
  - NDVI
  - NDRE
  - EVI
- Soil conditions:
  - Moisture by zone
  - Soil temperature
  - pH level
  - Estimated NPK levels
- Historical data visualization

---

### ⚠️ Alerts & Recommendations
- Critical alerts (frost risk, storms, etc.)
- Agronomic warnings (low NDVI, soil moisture deficit)
- Farming recommendations (harvesting, fertilization)
- Sensor status monitoring

---

### 🌦 Weather Forecast
- Current weather conditions
- Daily and weekly forecast
- Temperature highs and lows
- Rain probability
- Agricultural recommendations based on weather

---

## 🧱 Technologies Used

- Flutter
- Dart
- Material Design 3
- StatefulWidget & StatelessWidget
- BottomNavigationBar navigation
- Modular widget architecture

---

## 📂 Project Structure
lib/
├── main.dart
├── login_page.dart
├── home_page.dart
├── dashboard_page.dart
├── dados_fazenda_page.dart
├── alertas_page.dart
├── previsao_tempo_page.dart
├── widgets/
│ └── alert_widgets.dart


---

## 🎨 Design System

- 🎨 Primary Color: `#004B83` (Agricultural Blue)
- 🌿 Secondary Color: `#288B2D` (Agricultural Green)
- 📱 Mobile-first interface
- 🧭 Large and accessible buttons
- 📊 Card-based data visualization
- 🖼 Clean and high-legibility UI

---

## 🧭 Navigation

The app uses a Bottom Navigation Bar:

- 🏠 Home (Dashboard)
- 🌱 Farm Data
- ⚠️ Alerts
- 🌦 Weather

---

## 🚀 Future Improvements

- IoT sensor integration
- Firebase / Supabase backend
- Interactive farm maps
- Push notifications system
- AI-based agricultural predictions
- Web dashboard for farm management

---

## 👨‍🌾 Target Users

- Small and medium farmers
- Agronomists
- Agricultural cooperatives
- AgTech startups

---

## 📌 Project Status

🚧 Active development  
✔ Functional Flutter prototype  
✔ Core screens implemented  
⏳ Backend integration planned

---

## 💡 Author

This project was developed as a learning and portfolio application focused on Flutter and agricultural technology solutions.
