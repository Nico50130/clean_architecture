
abstract class StatementRepository {
  Future<void> saveValue(String value);
  Future<String?> getValue();
}
