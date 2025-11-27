# 📜 SuperLista

[![CI Status](https://github.com/ViniciusBrasilio01/super_lista_app/actions/workflows/flutter-ci](https://github.com/ViniciusBrasilio01/super_lista_app/actions)
[![Coverage Status](https://codecov.io/gh/ViniciusBrasilio01/super_lista_app/branch/main/graph/badge.svg?token=<TOKENo/gh/ViniciusBrasilio01/super_lista_app)]


Aplicativo de listas de compras com recursos premium gratuitos.

## 🎯 Objetivo
Facilitar a criação, organização e compartilhamento de listas de compras, oferecendo funcionalidades avançadas sem custo.

## 👨‍💻 Tecnologias
- Flutter 3.x
- Riverpod (gerenciamento de estado)
- Hive (persistência offline)
- Firebase (planejado para compartilhamento e notificações)
- Internacionalização (pt-BR)

## ✅ Funcionalidades
- Criar, editar e excluir listas.
- Compartilhamento via link (simulação).
- Sugestões de produtos.
- Recursos premium liberados:
  - Sem anúncios
  - Temas personalizados
  - Alteração de fontes
  - Widget na tela inicial
  - Suporte prioritário

## ⚙️ Instalação
```bash
git clone https://github.com/seuusuario/superlista.git
cd superlista
flutter pub get
flutter run
```

## 📦 Estrutura do Projeto
```plaintext
lib/
├── main.dart
├── core/
│   ├── theme.dart
│   └── localization.dart
├── docs/
│   ├── api.md
│   ├── arquitetura.md
│   ├── bando-de-dados.md
│   ├── configuracao.md
│   ├── deploy.md
│   ├── seguranca.md
│   └── testes.md
├── features/
│   ├── onboarding
│   │   ├── presentation/
│   │   │   ├── pages/
│   │   │   └── widgets/
│   │   └── viewmodel/
│   ├── perfil/
│   ├── premium/
│   ├── produtos/
│   ├── list/
│   │   ├── data/
│   │   │   └── list_repository.dart
│   │   ├── domain/
│   │   │   └── list_model.dart
│   │   └── presentation/
│   │       ├── list_page.dart
│   │       └── add_list_page.dart
└── premium/
    └── premium_features.dart