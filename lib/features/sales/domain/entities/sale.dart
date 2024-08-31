import 'package:core_encode/core_encode.dart';
import 'package:market_mate/features/product/domain/entities/product.dart';

abstract class Sale extends Entity {
  final String id;
  final List<String> productsIds;
  final DateTime date;
  final double totalPrice;

  Sale({
    required this.id,
    required this.productsIds,
    required this.date,
    required this.totalPrice,
  });
}
