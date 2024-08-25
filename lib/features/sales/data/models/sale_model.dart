import 'package:market_mate/features/sales/domain/entities/sale.dart';

class SaleModel extends Sale {
  SaleModel({
    required super.id,
    required super.products,
    required super.date,
    required super.totalPrice,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'products': products,
      'date': date.toIso8601String(),
      'total_price': totalPrice,
    };
  }
}
