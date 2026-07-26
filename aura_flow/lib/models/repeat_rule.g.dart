// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repeat_rule.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RepeatRuleAdapter extends TypeAdapter<RepeatRule> {
  @override
  final int typeId = 5;

  @override
  RepeatRule read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RepeatRule(
      type: fields[0] as RepeatType,
      interval: fields[1] as int,
      weekDays: (fields[2] as List?)?.cast<int>(),
      dayOfMonth: fields[3] as int?,
      endDate: fields[4] as DateTime?,
      maxOccurrences: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, RepeatRule obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.interval)
      ..writeByte(2)
      ..write(obj.weekDays)
      ..writeByte(3)
      ..write(obj.dayOfMonth)
      ..writeByte(4)
      ..write(obj.endDate)
      ..writeByte(5)
      ..write(obj.maxOccurrences);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RepeatRuleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
