import 'package:market_mate/features/sales/domain/entities/sale.dart';

class SaleModel extends Sale {
  SaleModel({
    required super.id,
    required super.productsIds,
    required super.date,
    required super.totalPrice,
  });

  factory SaleModel.fromJson({required Map map}) {
    return SaleModel(
      id: map['id'],
      productsIds: map['products'],
      date: map['date'],
      totalPrice: map['price'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'products': productsIds,
      'date': date.toIso8601String(),
      'total_price': totalPrice,
    };
  }
}
