import 'package:clean_architecture/features/cpa_statement/domain/entities/statement.dart';
import '../repositories/statement_repository.dart';

class SaveStatement {
  final StatementRepository repository;
  SaveStatement(this.repository);

  Future<void> call(Statement statement) async {
    await repository.saveStatement(statement);
  }
}

