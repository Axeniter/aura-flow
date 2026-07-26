import 'package:aura_flow/models/repeat_rule.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'task.g.dart';

@HiveType(typeId: 4)
class Task extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? description;

  @HiveField(3)
  int priority;

  @HiveField(4)
  String? categoryId;

  @HiveField(5)
  bool isDone;

  @HiveField(6)
  DateTime? completedAt;

  @HiveField(7)
  DateTime? targetDate;

  @HiveField(8)
  RepeatRule? repeatRule;

  @HiveField(9)
  int occurrenceNumber;

  Task({
    required this.id,
    required this.name,
    this.description,
    this.priority = 0,
    this.categoryId,
    this.isDone = false,
    this.completedAt,
    this.targetDate,
    this.repeatRule,
    this.occurrenceNumber = 1,
  });

    factory Task.create({
      required String name,
      String? description,
      int? priority,
      String? categoryId,
      DateTime? targetDate,
      RepeatRule? repeatRule,
    }) {
    return Task(
      id: const Uuid().v1(),
      name: name,
      description: description,
      priority: priority ?? 0,
      categoryId: categoryId,
      targetDate: targetDate,
      repeatRule: repeatRule,
    );
  }
}