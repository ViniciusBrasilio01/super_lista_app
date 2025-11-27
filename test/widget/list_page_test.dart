
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:SuperLista/features/list/presentation/list_page.dart';

void main() {
  late Directory tempDir;

  setUpAll(() async {
    tempDir = await Directory.systemTemp.createTemp('hive_widget_test');
    Hive.init(tempDir.path);
    await Hive.openBox('listas');
  });

  tearDownAll(() async {
    await Hive.close();
    await tempDir.delete(recursive: true);
  });

  setUp(() {
    Hive.box('listas').clear();
  });

  testWidgets('Exibe mensagem quando não há listas', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ListaPage()));
    expect(find.text('Nenhuma lista criada ainda'), findsOneWidget);
  });

  testWidgets('Botão de adicionar lista está presente', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ListaPage()));
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
