import 'package:clean_architecture/features/cpa_statement/data/datasources/statement_local_data_source.dart';
import 'package:clean_architecture/features/cpa_statement/data/models/statement_model.dart';
import 'package:clean_architecture/features/cpa_statement/domain/entities/statement.dart';
import 'package:clean_architecture/features/cpa_statement/domain/repositories/statement_repository.dart';

class StatementRepositoryImpl implements StatementRepository {
  final StatementLocalDataSource localDataSource;

  StatementRepositoryImpl(this.localDataSource);

  @override
  Future<void> saveStatement(Statement statement) async {
    final model = StatementModel(
      id: statement.id,
      title: statement.title,
      amount: statement.amount,
      date: statement.date,
    );
    await localDataSource.saveStatement(model);
  }

  @override
  Future<List<Statement>> getAllStatements() async {
    final models = await localDataSource.getAllStatements();
    return models
        .map((m) => Statement(
      id: m.id,
      title: m.title,
      amount: m.amount,
      date: m.date,
    ))
        .toList();
  }

  @override
  Future<void> deleteStatement(String id) async {
    await localDataSource.deleteStatement(id);
  }
}


