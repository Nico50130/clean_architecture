import 'package:hive_flutter/hive_flutter.dart';
import 'package:clean_architecture/core/hive_config.dart';
import 'package:clean_architecture/features/cpa_statement/data/models/statement_model.dart';

class StatementLocalDataSource {
  Box<StatementModel> get _box => Hive.box<StatementModel>(HiveConfig.statementBox);

  Future<void> saveStatement(StatementModel statement) async {
    await _box.put(statement.id, statement);
  }

  Future<List<StatementModel>> getAllStatements() async {
    return _box.values.toList();
  }

  Future<void> deleteStatement(String id) async {
    await _box.delete(id);
  }
}

