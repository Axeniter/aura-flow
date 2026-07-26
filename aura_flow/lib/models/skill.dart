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
  String icon;

  Skill({
    required this.id,
    required this.name,
    this.description,
    required this.icon,
  });

  factory Skill.create({
    required String name,
    String? description,
    required String icon,
  }) {
    return Skill(
      id: Uuid().v1(),
      name: name,
      description: description,
      icon : icon,
    );
  }
}