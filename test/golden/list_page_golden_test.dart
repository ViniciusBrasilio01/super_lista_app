import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hive/hive.dart';
import 'package:SuperLista/features/list/presentation/list_page.dart';

void main() {
  late Directory tempDir;

  setUpAll(() async {
    tempDir = await Directory.systemTemp.createTemp('hive_golden_test');
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

  testGoldens('ListaPage Golden Test', (tester) async {
    await tester.pumpWidgetBuilder(const ListaPage());
    await screenMatchesGolden(tester, 'lista_page');
  });
}
