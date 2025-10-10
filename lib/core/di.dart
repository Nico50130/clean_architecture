import 'package:get_it/get_it.dart';
import 'package:clean_architecture/core/hive_config.dart';
import 'package:clean_architecture/features/cpa_statement/data/datasources/statement_local_data_source.dart';
import 'package:clean_architecture/features/cpa_statement/data/repositories_impl/statement_repository_impl.dart';
import 'package:clean_architecture/features/cpa_statement/domain/repositories/statement_repository.dart';
import 'package:clean_architecture/features/cpa_statement/domain/usecases/save_statement.dart';

/// Instance globale de GetIt
final getIt = GetIt.instance;

/// Initialise Hive + toutes les dépendances du projet
Future<void> initDI() async {
  await HiveConfig.initHive();

  // Data sources
  getIt.registerLazySingleton(() => StatementLocalDataSource());

  // Repositories
  getIt.registerLazySingleton<StatementRepository>(
        () => StatementRepositoryImpl(getIt()),
  );

  // Use cases
  getIt.registerFactory(() => SaveStatement(getIt()));
}

