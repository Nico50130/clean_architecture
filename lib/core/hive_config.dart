import 'package:hive_flutter/hive_flutter.dart';
import 'package:clean_architecture/features/cpa_statement/data/models/statement_model.dart';

class HiveConfig {
  static const statementBox = 'statement_box';

  static Future<void> initHive() async {
    await Hive.initFlutter();

    // 🔹 Enregistre l’adapter avant d’ouvrir la box
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(StatementModelAdapter());
    }

    await Hive.openBox<StatementModel>(statementBox);
  }
}


