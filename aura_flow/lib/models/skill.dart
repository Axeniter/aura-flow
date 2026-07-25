import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'skill.g.dart';

@HiveType(typeId: 1)
class Skill extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? description;

  @HiveField(3)
  int level;

  @HiveField(4)
  int exp;

  @HiveField(5)
  int streak;

  @HiveField(6)
  Map<String, int> daily;

  @HiveField(7)
  Map<String, int> attributeMultipliers;

  int get expToNextLevel => (((level / 10).floor() + 1) * 10);

  Skill({
    required this.id,
    required this.name,
    this.description,
    this.level = 1,
    this.exp = 0,
    this.streak = 0,
    Map<String, int>? daily,
    Map<String, int>? attributeMultipliers,
  }) : daily = daily ?? {},
       attributeMultipliers = attributeMultipliers ?? {};

  factory Skill.create({
    required String name,
    String? description,
    Map<String, int>? attributeMultipliers,
  }) {
    return Skill(
      id: Uuid().v1(),
      name: name,
      description: description,
      attributeMultipliers: attributeMultipliers
    );
  }
}