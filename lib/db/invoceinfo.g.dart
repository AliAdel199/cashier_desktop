// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoceinfo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceInfoAdapter extends TypeAdapter<InvoiceInfo> {
  @override
  final int typeId = 3;

  @override
  InvoiceInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InvoiceInfo(
      invNumber: fields[0] as int,
      invDate: fields[1] as DateTime,
      totalPrice: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, InvoiceInfo obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.invNumber)
      ..writeByte(1)
      ..write(obj.invDate)
      ..writeByte(2)
      ..write(obj.totalPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
