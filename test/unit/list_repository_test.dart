import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:SuperLista/features/list/data/list_repository.dart';
import 'package:SuperLista/features/list/domain/list_model.dart';

void main() {
  late ListRepository repo;
  late Directory tempDir;

  setUpAll(() async {
    // Cria diretório temporário para evitar conflitos
    tempDir = await Directory.systemTemp.createTemp('hive_test');
    Hive.init(tempDir.path);
    await Hive.openBox('listas');
  });

  tearDownAll(() async {
    await Hive.close();
    await tempDir.delete(recursive: true);
  });

  setUp(() {
    repo = ListRepository();
    repo.box.clear();
  });

  test('Deve adicionar e recuperar lista', () {
    final lista = ListaModel(id: '1', nome: 'Compras', itens: ['Arroz']);
    repo.add(lista);
    final listas = repo.getAll();
    expect(listas.length, 1);
    expect(listas.first.nome, 'Compras');
  });

  test('Deve excluir lista pelo ID', () {
    final lista = ListaModel(id: '1', nome: 'Compras', itens: []);
    repo.add(lista);
    repo.delete('1');
    expect(repo.getAll().isEmpty, true);
  });
}
