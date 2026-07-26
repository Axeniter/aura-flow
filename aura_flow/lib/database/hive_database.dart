import 'package:hive_flutter/hive_flutter.dart';
import '../models/domain.dart';
import '../models/activity.dart';
import '../models/task.dart';
import '../models/daily_record.dart';
import '../models/note.dart';
import '../models/repeat_rule.dart';

class HiveDatabase {
  static const String domainsBox = 'domains';
  static const String activitiesBox = 'activities';
  static const String tasksBox = 'tasks';
  static const String dailyRecordsBox = 'daily_records';
  static const String notesBox = 'notes';

  static Box<Domain> get domains => Hive.box<Domain>(domainsBox);
  static Box<Activity> get activities => Hive.box<Activity>(activitiesBox);
  static Box<Task> get tasks => Hive.box<Task>(tasksBox);
  static Box<DailyRecord> get dailyRecords => Hive.box<DailyRecord>(dailyRecordsBox);
  static Box<Note> get notes => Hive.box<Note>(notesBox);

  static Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(DomainAdapter());
    Hive.registerAdapter(ActivityAdapter());
    Hive.registerAdapter(TaskAdapter());
    Hive.registerAdapter(DailyRecordAdapter());
    Hive.registerAdapter(NoteAdapter());
    Hive.registerAdapter(RepeatRuleAdapter());

    await Hive.openBox<Domain>(domainsBox);
    await Hive.openBox<Activity>(activitiesBox);
    await Hive.openBox<Task>(tasksBox);
    await Hive.openBox<DailyRecord>(dailyRecordsBox);
    await Hive.openBox<Note>(notesBox);
  }
}