import 'package:clean_architecture/features/cpa_statement/domain/usecases/save_statement.dart';
import 'package:flutter/material.dart';

import 'features/cpa_statement/presentation/pages/my_home_page.dart';

class MyApp extends StatelessWidget {

  final SaveStatement saveStatement;

  const MyApp({super.key, required this.saveStatement});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Relevés CPA',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(saveStatement: saveStatement),
        },
    );
  }
}