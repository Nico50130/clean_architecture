import 'package:flutter/material.dart';
import 'package:clean_architecture/features/cpa_statement/domain/usecases/save_statement.dart';

import '../../domain/entities/statement.dart';

class MyHomePage extends StatelessWidget {
  final SaveStatement saveStatement;

  const MyHomePage({super.key, required this.saveStatement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Relevés CPA')),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              final statement = Statement(
                id: DateTime.now().millisecondsSinceEpoch.toString(),
                title: "Relevé EDF",
                amount: 95.40,
                date: DateTime.now(),
              );

              await saveStatement(statement);
            },
          child: const Text('Enregistrer un relevé'),
        ),
      ),
    );
  }
}

