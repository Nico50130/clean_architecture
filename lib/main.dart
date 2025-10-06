import 'package:flutter/material.dart';
import 'package:clean_architecture/core/di.dart';

import 'app.dart';
import 'features/cpa_statement/domain/usecases/save_statement.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDI(); // 🔧 initialise Hive + injections
  runApp(MyApp(saveStatement: getIt<SaveStatement>()));
}
