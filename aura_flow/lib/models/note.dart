import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'note.g.dart';

@HiveType(typeId: 6)
class Note extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? text;

  @HiveField(3)
  String? domainId;

  Note({
    required this.id,
    required this.name,
    this.text,
    this.domainId
  });

  factory Note.create({
    required String name,
    String? text,
    String? domainId,
  }) {
    return Note(
      id: Uuid().v1(),
      name: name,
      text: text,
      domainId: domainId,
    );
  }
}