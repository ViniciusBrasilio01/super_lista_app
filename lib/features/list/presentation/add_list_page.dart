import 'package:flutter/material.dart';

class AddListPage extends StatefulWidget {
  const AddListPage({super.key});

  @override
  State<AddListPage> createState() => _AddListPageState();
}

class _AddListPageState extends State<AddListPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nova Lista')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: 'Nome da Lista'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, controller.text);
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}