import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'daily_record.g.dart';

@HiveType(typeId: 3)
class DailyRecord extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final DateTime date;

  @HiveField(2)
  final String activityId;

  @HiveField(3)
  final String domainId;

  DailyRecord({
    required this.id,
    required this.date,
    required this.activityId,
    required this.domainId,
  });

  factory DailyRecord.create({
    required DateTime date,
    required String activityId,
    required String domainId,
  }) {
    return DailyRecord(
      id: Uuid().v1(), 
      date: date,
      activityId: activityId,
      domainId: domainId
      );
  }
}