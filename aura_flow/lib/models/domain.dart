import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'domain.g.dart';

@HiveType(typeId: 1)
class Domain extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String icon;

  @HiveField(4)
  DomainType type;

  Domain({
    required this.id,
    required this.name,
    this.description,
    required this.icon,
    required this.type
  });

  factory Domain.create({
    required String name,
    String? description,
    required String icon,
    required DomainType type,
  }) {
    return Domain(
      id: Uuid().v1(),
      name: name,
      description: description,
      icon: icon,
      type: type,
      );
  }
}

enum DomainType {
  skill,
  category
}