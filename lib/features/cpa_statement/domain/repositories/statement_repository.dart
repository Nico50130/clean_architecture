import 'package:clean_architecture/features/cpa_statement/domain/entities/statement.dart';

abstract class StatementRepository {
  Future<void> saveStatement(Statement statement);
  Future<List<Statement>> getAllStatements();
  Future<void> deleteStatement(String id);
}
