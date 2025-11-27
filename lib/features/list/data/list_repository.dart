import 'package:hive/hive.dart';
import '../domain/list_model.dart';

class ListRepository {
  final Box box = Hive.box('listas');

  List<ListaModel> getAll() {
    return box.values
        .map((e) => ListaModel.fromMap(Map<String, dynamic>.from(e)))
        .toList();
  }

  void add(ListaModel lista) {
    box.put(lista.id, lista.toMap());
  }

  void delete(String id) {
    box.delete(id);
  }
}