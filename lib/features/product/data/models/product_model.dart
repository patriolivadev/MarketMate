
import 'package:market_mate/features/product/domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    required String id,
    required String name,
    required String description,
    required double price,
    required List<String> suppliers,
  }) : super(
          id: id,
          name: name,
          description: description,
          price: price,
          suppliers: suppliers,
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'suppliers': suppliers,
    };
  }
}
