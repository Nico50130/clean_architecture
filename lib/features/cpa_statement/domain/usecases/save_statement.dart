import '../repositories/statement_repository.dart';

class SaveStatement {
  final StatementRepository repository;
  SaveStatement(this.repository);

  Future<void> call(String value) async {
    await repository.saveValue(value);
  }
}
