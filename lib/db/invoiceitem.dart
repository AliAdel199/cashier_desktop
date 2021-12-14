
import 'package:hive/hive.dart';


part 'invoiceitem.g.dart';


@HiveType(typeId : 2)

class InvoiceItem  extends HiveObject {
  @HiveField(0)
  String proName;
  @HiveField(1)
  int proPrice;
  @HiveField(2)
  int proCount;


  InvoiceItem(
      {
        required this.proName,
        required this.proPrice,
        required this.proCount,

      });

  InvoiceItem.fromMap(Map<String, dynamic> res)
      :


        proName = res["proName"],
        proPrice = res["proPrice"],
        proCount = res["boxPrice"];


  Map<String, Object?> toMap() {
    return {'proName': proName, 'proPrice': proPrice, 'proCount': proCount};
  }
}
