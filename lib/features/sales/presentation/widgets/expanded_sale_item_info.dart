import 'package:flutter/material.dart';
import 'package:market_mate/features/sales/domain/entities/sale.dart';

class ExpandedSaleItemInfoModal extends StatelessWidget {
  final List<Sale> sales;
  final int index;

  const ExpandedSaleItemInfoModal({
    super.key,
    required this.sales,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildListView(context),
        ],
      ),
    );
  }

  Widget buildListView(BuildContext context) {
    return ListView.separated(
      itemCount: sales[index].products.length,
      itemBuilder: (context, productIndex) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sales[index].products[productIndex].name,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                '\$${sales[index].products[productIndex].price}',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        );
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}

void showExpandedSaleItemInfoModal(BuildContext context, List<Sale> sales, int index) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return ExpandedSaleItemInfoModal(
        sales: sales,
        index: index,
      );
    },
  );
}
