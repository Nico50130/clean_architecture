
abstract class StatementRepository {
  Future<void> saveValue(String value);
  String? getValue();
}