
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:SuperLista/features/list/presentation/list_page.dart';

void main() {
  testWidgets('Exibe mensagem quando não há listas', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ListaPage()));
    expect(find.text('Nenhuma lista criada ainda'), findsOneWidget);
  });

  testWidgets('Botão de adicionar lista está presente', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: ListaPage()));
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
