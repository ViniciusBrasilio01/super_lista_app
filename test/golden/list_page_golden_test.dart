
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:SuperLista/features/list/presentation/list_page.dart';

void main() {
  testGoldens('ListaPage Golden Test', (tester) async {
    await tester.pumpWidgetBuilder(const ListaPage());
    await screenMatchesGolden(tester, 'lista_page');
  });
}
