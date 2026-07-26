import 'package:hive/hive.dart';

part 'repeat_rule.g.dart';

/// Class represents repeat rule for task
///
/// Each type uses certain fields:
/// 1. daily: interval
/// 2. weekly: interval + weekDays
/// 3. monthly: interval + dayOfMonth
@HiveType(typeId: 5)
class RepeatRule {
  @HiveField(0)
  RepeatType type;

  @HiveField(1)
  int interval;

  @HiveField(2)
  List<int>? weekDays;

  @HiveField(3)
  int? dayOfMonth;

  @HiveField(4)
  DateTime? endDate;

  @HiveField(5)
  int? maxOccurrences;

  RepeatRule({
    required this.type,
    this.interval = 1,
    this.weekDays,
    this.dayOfMonth,
    this.endDate,
    this.maxOccurrences,
  });
}

enum RepeatType {
  daily,
  weekly,
  monthly,
}