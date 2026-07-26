import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'daily_record.g.dart';

@HiveType(typeId: 3)
class DailyRecord extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String activityId;

  @HiveField(2)
  final DateTime date;

  DailyRecord({
    required this.id,
    required this.activityId,
    required this.date,
  });

  factory DailyRecord.create({
    required String activityId,
    required DateTime date,
  }) {
    return DailyRecord(
      id: Uuid().v1(),
      activityId: activityId, 
      date: date);
  }
}