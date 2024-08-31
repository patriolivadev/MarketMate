import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:market_mate/features/sales/domain/entities/sale.dart';
import 'package:market_mate/features/sales/presentation/widgets/expanded_sale_item_info.dart';

class SaleItemBuilder extends StatefulWidget {
  const SaleItemBuilder({
    super.key,
    required this.sales,
    required this.index,
  });

  final List<Sale> sales;
  final dynamic index;

  @override
  State<SaleItemBuilder> createState() => _SaleItemBuilderState();
}

class _SaleItemBuilderState extends State<SaleItemBuilder> {
  bool isExpanded = false;
  dynamic size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    final dateFormat = DateFormat('dd/MM/yyyy - HH:mm');
    final formattedDate = dateFormat.format(widget.sales[widget.index].date);

    return InkWell(
      onTap: () {
        showExpandedSaleItemInfoModal(context, widget.sales, widget.index);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildItem(formattedDate, context),
        ],
      ),
    );
  }

  Container buildItem(String formattedDate, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildInfo(formattedDate),
          buildExpandedArrow(context),
        ],
      ),
    );
  }

  Widget buildInfo(String formattedDate) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$${widget.sales[widget.index].totalPrice}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            formattedDate,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExpandedArrow(context) {
    return SizedBox(
      width: size.width * 0.15,
      child: const Icon(Icons.keyboard_arrow_right_sharp),
    );
  }
}
