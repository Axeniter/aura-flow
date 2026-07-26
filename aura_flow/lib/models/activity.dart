import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'activity.g.dart';

@HiveType(typeId: 2)
class Activity extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String icon;

  @HiveField(4)
  String domainId;

  Activity({
    required this.id,
    required this.name,
    this.description,
    required this.icon,
    required this.domainId,
  });

  factory Activity.create({
    required String name,
    String? description,
    required String icon,
    required String domainId,
  }) {
    return Activity(
      id: Uuid().v1(),
      name: name, 
      description: description,
      icon: icon, 
      domainId: domainId
    );
  }
}
