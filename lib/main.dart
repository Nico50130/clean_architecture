import 'package:clean_architecture/features/cpa_statement/data/datasources/statement_local_data_source.dart';
import 'package:clean_architecture/features/cpa_statement/data/repositories_impl/statement_repository_impl.dart';
import 'package:clean_architecture/features/cpa_statement/domain/usecases/save_statement.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'app.dart';
import 'core/hive_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.init(); // Initialise Hive avant le lancement de l'app
  final box = Hive.box<String>('cpaStatementBox');

  final dataSource = StatementLocalDataSource(box);
  final repository = StatementRepositoryImpl(dataSource);
  final saveStatement = SaveStatement(repository);

  runApp(MyApp(saveStatement: saveStatement));
}
