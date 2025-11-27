# Documentação de API

## Status Atual
Integração com Firebase planejada para:
- Compartilhamento de listas.
- Notificações push.

## Endpoints (futuros)
- `POST /listas` -> Criar lista.
- `GET /listas` -> Listar todas as listas.
- `DELETE /listas/{id}` -> Excluir lista.

## Exemplo de Requisição
```json
POST /listas
{
    "nome": "Compras da semana",
    "itens": ["Arroz", "Feijão", "Leite"]
}
```