import 'package:flutter/material.dart';

class PremiumFeaturesPage extends StatelessWidget {
  const PremiumFeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recursos Premium')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('✅ Sem anúncios'),
            Text('✅ Temas personalizados'),
            Text('✅ Alteração de fontes'),
            Text('✅ Widget na tela inicial'),
            Text('✅ Suporte prioritário'),
            SizedBox(height: 20),
            Text('Tudo isso já está disponível para você gratuitamente'),
          ],
        ),
      ),
    );
  }
}