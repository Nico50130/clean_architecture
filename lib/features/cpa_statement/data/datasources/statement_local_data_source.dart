import 'package:hive_flutter/hive_flutter.dart';
import 'package:clean_architecture/core/hive_config.dart';

class StatementLocalDataSource {
  static const _key = 'statement';

  /// Accès à la box Hive déjà ouverte
  Box<String> get _box => Hive.box<String>(HiveConfig.boxName);

  /// Sauvegarde d'une valeur de statement dans Hive
  Future<void> saveValue(String value) async {
    try {
      await _box.put(_key, value);
    } catch (e) {
      throw Exception('Erreur lors de la sauvegarde : $e');
    }
  }

  /// Lecture d'une valeur enregistrée
  Future<String?> getValue() async {
    try {
      return _box.get(_key);
    } catch (e) {
      throw Exception('Erreur lors de la lecture : $e');
    }
  }
}
