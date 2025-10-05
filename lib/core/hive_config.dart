import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  static Future<void> init() async {
    // Initialise Hive pour Flutter (gère automatiquement le dossier de stockage)
    await Hive.initFlutter();

    // Ouvre une box nommée "exampleBox" (créée si elle n'existe pas)
    await Hive.openBox<String>('cpaStatementBox');
  }
}
