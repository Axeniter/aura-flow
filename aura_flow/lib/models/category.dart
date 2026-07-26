import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'category.g.dart';

@HiveType(typeId: 6)
class Category extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String icon;

  Category({
    required this.id,
    required this.name,
    this.description,
    required this.icon,
  });

  factory Category.create({
    required String name,
    String? description,
    required String icon,
  }) {
    return Category(
      id: Uuid().v1(),
      name: name,
      description: description,
      icon: icon
      );
  }
}