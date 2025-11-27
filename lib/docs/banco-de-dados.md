
# Banco de Dados

## Modelo ER
Entidade principal: **Lista**
- id: String (UUID)
- nome: String
- itens: Array de Strings

## Persistência
- Banco local: Hive
- Box: `listas`
- Estrutura:
```json
{
    "id": "uuid",
    "nome": "Compras",
    "itens": ["Arroz", "Feijão"]
}
```