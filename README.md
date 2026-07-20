# 🛡️ DevSecOps & SRE Lab: 3-Tier Architecture with Edge WAF & Real-Time Telemetry

Um ambiente de laboratório corporativo automatizado que demonstra práticas modernas de **DevSecOps**, **Engenharia de Confiabilidade (SRE)** e **Infraestrutura como Código (IaC)** utilizando Docker Compose de forma híbrida (Windows/Linux/macOS).

---

## 🏛️ Arquitetura do Sistema (3-Tier)

O projeto simula um ecossistema corporativo isolado em uma rede privada (`corp_network`), onde o banco de dados e a regra de negócio ficam completamente invisíveis para a rede externa:

```text
[ Cliente / Atacante ]
         │
         ▼ (Porta 80)
┌──────────────────────────────────────────┐
│  Camada 1: Borda & WAF (Nginx)           │ ──► [ Rate Limit: 10 req/s ]
└──────────────────────────────────────────┘
         │ (Proxy reverso na rede privada)
         ▼ (Porta 8080)
┌──────────────────────────────────────────┐
│  Camada 2: API Backend (Spring Boot Java)│
└──────────────────────────────────────────┘
         │ (JDBC na rede privada)
         ▼ (Porta 1521)
┌──────────────────────────────────────────┐
│  Camada 3: Banco de Dados (Oracle DB XE) │
└──────────────────────────────────────────┘