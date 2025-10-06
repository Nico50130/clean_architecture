import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  /// Nom de la box pour les données CPA Statement
  static const boxName = 'cpaStatementBox';

  /// Initialisation de Hive et ouverture de la box principale.
  static Future<void> init() async {
    try {
      await Hive.initFlutter();

      // Évite d’ouvrir deux fois la même box
      if (!Hive.isBoxOpen(boxName)) {
        await Hive.openBox<String>(boxName);
      }
    } catch (e, st) {
      // En prod, tu peux loguer l'erreur via un logger
      //logger.e('Erreur Hive init', e, st);
      rethrow;
    }
  }
}

