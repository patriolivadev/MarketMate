import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market_mate/core/services/dependencies_service.dart';
import 'package:market_mate/core/utils/themes.dart';
import 'package:market_mate/features/product/data/models/product_model.dart';
import 'package:market_mate/features/sales/data/models/sale_model.dart';
import 'package:market_mate/features/sales/domain/entities/sale.dart';
import 'package:market_mate/features/sales/presentation/manager/sales_bloc.dart';
import 'package:market_mate/features/sales/presentation/widgets/sale_item_builder_widget.dart';

class SalesPage extends StatefulWidget {
  static const routeName = '/';

  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  final SalesBloc _bloc = getIt<SalesBloc>();
  List<Sale> sales = [
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 120),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 410),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 2500),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 105),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 103),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 1220),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 110),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 7810),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 160),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 1540),
    SaleModel(
        id: '1',
        products: [
          ProductModel(
              id: 'id',
              name: 'Coca Cola',
              description: 'description',
              price: 2000,
              suppliers: []),
          ProductModel(
              id: 'id',
              name: 'Pan',
              description: 'description',
              price: 500,
              suppliers: []),
        ],
        date: DateTime.now(),
        totalPrice: 1320),
  ];
  dynamic size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocConsumer(
        bloc: _bloc,
        listener: listener,
        builder: builder,
      ),
    );
  }

  void listener(context, state) {}

  Widget builder(context, state) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          buildListView(),
          buildAddSaleButton(),
        ],
      ),
    );
  }

  Widget buildListView() {
    return Container(
      color: AppTheme.backgroundAppColor3,
      child: ListView.separated(
        itemCount: sales.length,
        itemBuilder: itemBuilder,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }

  Widget? itemBuilder(context, index) {
    return SaleItemBuilder(
      sales: sales,
      index: index,
    );
  }

  Center buildTitle() {
    return const Center(
        child: Text(
      'Ventas',
      style: AppTheme.titleTheme,
    ));
  }

  Positioned buildAddSaleButton() {
    return Positioned(
      bottom: 10,
      right: 10,
      child: FloatingActionButton(
        backgroundColor: AppTheme.primaryColor,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
