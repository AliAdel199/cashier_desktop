
import 'package:hive/hive.dart';

part 'product.g.dart';

@HiveType(typeId : 1)
class Product  extends HiveObject {
  @HiveField(0)
  String? proBarcode;
  @HiveField(1)
  String? proName;
  @HiveField(2)
  int? proPrice;
  @HiveField(3)
  int? boxPrice;
  @HiveField(4)
  String? proType;


  Product(
      {
        this.proBarcode,
        this.proName,
        this.proPrice,
        this.boxPrice,
        this.proType,

      });

  Product.fromMap(Map<String, dynamic> res)
      :
        proBarcode = res["proBarcode"],
        proName = res["proName"],
        proPrice = res["proPrice"],
        boxPrice = res["boxPrice"],
        proType = res["proType"];

  Map<String, Object?> toMap() {
    return {'proBarcode':proBarcode,'proName': proName, 'proPrice': proPrice, 'boxPrice': boxPrice, 'proType': proType};
  }
}