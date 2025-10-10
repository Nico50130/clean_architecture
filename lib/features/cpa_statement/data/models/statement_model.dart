import 'package:hive/hive.dart';

part 'statement_model.g.dart'; // généré automatiquement

@HiveType(typeId: 1)
class StatementModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final double amount;

  @HiveField(3)
  final DateTime date;

  StatementModel({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}
