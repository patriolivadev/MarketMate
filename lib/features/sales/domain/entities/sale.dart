import 'package:core_encode/core_encode.dart';
import 'package:market_mate/features/product/domain/entities/product.dart';

abstract class Sale extends Entity {
  final String id;
  final List<Product> products;
  final DateTime date;
  final double totalPrice;

  Sale({
    required this.id,
    required this.products,
    required this.date,
    required this.totalPrice,
  });
}
