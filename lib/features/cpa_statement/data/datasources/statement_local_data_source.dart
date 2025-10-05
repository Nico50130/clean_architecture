import 'package:hive/hive.dart';

class StatementLocalDataSource {
  final Box<String> box;
  StatementLocalDataSource(this.box);

  Future<void> saveValue(String value) async {
    await box.put('statement', value);
  }

  String? getValue() => box.get('statement');
}
