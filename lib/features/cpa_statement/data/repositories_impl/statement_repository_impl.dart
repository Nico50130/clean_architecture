import '../../domain/repositories/statement_repository.dart';
import '../datasources/statement_local_data_source.dart';

class StatementRepositoryImpl implements StatementRepository {
  final StatementLocalDataSource localDataSource;

  StatementRepositoryImpl(this.localDataSource);

  @override
  Future<void> saveValue(String value) async {
    await localDataSource.saveValue(value);
  }

  @override
  Future<String?> getValue() async {
    return await localDataSource.getValue();
  }
}

