
import 'package:hive/hive.dart';


part 'invoceinfo.g.dart';


@HiveType(typeId : 3)

class InvoiceInfo  extends HiveObject {
  @HiveField(0)
  int invNumber;
  @HiveField(1)
  DateTime invDate;

  @HiveField(2)
  int totalPrice;


  InvoiceInfo(
      {
        required this.invNumber,
        required this.invDate,
        required this.totalPrice,

      });

  InvoiceInfo.fromMap(Map<String, dynamic> res)
      :


        invNumber = res["invNumber"],
        invDate = res["invDate"],
        totalPrice = res["totalPrice"];


  Map<String, Object?> toMap() {
    return {'invNumber':  invNumber, 'invDate': invDate, 'totalPrice': totalPrice};
  }
}
