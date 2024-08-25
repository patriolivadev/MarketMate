import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:market_mate/core/utils/themes.dart';
import 'package:market_mate/features/sales/domain/entities/sale.dart';

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
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildItem(formattedDate, context),
          if (isExpanded) buildExpandedInfo(),
        ],
      ),
    );
  }

  Widget buildExpandedInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin:
              const EdgeInsets.only(right: 5, left: 15, bottom: 5),
          width: size.width * 0.8,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: buildListView(),
        ),
      ],
    );
  }

  Widget buildListView() {
    return ListView.separated(
      itemCount: widget.sales[widget.index].products.length,
      itemBuilder: buildProductsList,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }

  Widget? buildProductsList(context, index) {
    return SizedBox(
      height: size.height * 0.04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.sales[widget.index].products[index].name,
            style: const TextStyle(fontSize: 14),
          ),
          Text(
            '\$${widget.sales[widget.index].products[index].price}',
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Container buildItem(String formattedDate, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: 5, left: 5, top: 5, bottom: !isExpanded ? 5 : 0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppTheme.backgroundAppColor3,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildInfo(formattedDate),
          isExpanded ? buildExpandedArrow(context) : buildArrow(context),
        ],
      ),
    );
  }

  Widget buildArrow(context) {
    return SizedBox(
      width: size.width * 0.15,
      child: const Icon(Icons.keyboard_arrow_down_sharp),
    );
  }

  Widget buildExpandedArrow(context) {
    return SizedBox(
      width: size.width * 0.15,
      child: const Icon(Icons.keyboard_arrow_up_sharp),
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
}
