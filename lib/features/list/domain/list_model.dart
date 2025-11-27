class ListaModel {
  final String id;
  final String nome;
  final List<String> itens;

  ListaModel({required this.id, required this.nome, required this.itens});

  Map<String, dynamic> toMap() => {'id': id, 'nome': nome, 'itens': itens};

  factory ListaModel.fromMap(Map<String, dynamic> map) => ListaModel(
    id: map['id'],
    nome: map['nome'],
    itens: List<String>.from(map['itens']),
  );
}