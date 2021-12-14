// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 1;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      proBarcode: fields[0] as String?,
      proName: fields[1] as String?,
      proPrice: fields[2] as int?,
      boxPrice: fields[3] as int?,
      proType: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.proBarcode)
      ..writeByte(1)
      ..write(obj.proName)
      ..writeByte(2)
      ..write(obj.proPrice)
      ..writeByte(3)
      ..write(obj.boxPrice)
      ..writeByte(4)
      ..write(obj.proType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
