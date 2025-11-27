import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../data/list_repository.dart';
import '../domain/list_model.dart';
import 'add_list_page.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  final repo = ListRepository();

  @override
  Widget build(BuildContext context) {
    final listas = repo.getAll();
    return Scaffold(
      appBar: AppBar(title: const Text('Minhas Listas')),
      body: listas.isEmpty
          ? const Center(child: Text('Nenhuma lista criada ainda'))
          : ListView.builder(
              itemCount: listas.length,
              itemBuilder: (context, index) {
                final lista = listas[index];
                return ListTile(
                  title: Text(lista.nome),
                  subtitle: Text('${lista.itens.length} itens'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        repo.delete(lista.id);
                      });
                    },
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final nome = await Navigator.push<String>(
            context,
            MaterialPageRoute(builder: (_) => const AddListPage()),
          );
          if (nome != null && nome.isNotEmpty) {
            setState(() {
              repo.add(ListaModel(id: const Uuid().v4(), nome: nome, itens: []));
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}