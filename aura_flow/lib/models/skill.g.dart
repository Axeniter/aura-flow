// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SkillAdapter extends TypeAdapter<Skill> {
  @override
  final int typeId = 1;

  @override
  Skill read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Skill(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String?,
      level: fields[3] as int,
      exp: fields[4] as int,
      streak: fields[5] as int,
      daily: (fields[6] as Map?)?.cast<String, int>(),
      attributeMultipliers: (fields[7] as Map?)?.cast<String, int>(),
    );
  }

  @override
  void write(BinaryWriter writer, Skill obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.level)
      ..writeByte(4)
      ..write(obj.exp)
      ..writeByte(5)
      ..write(obj.streak)
      ..writeByte(6)
      ..write(obj.daily)
      ..writeByte(7)
      ..write(obj.attributeMultipliers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SkillAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
