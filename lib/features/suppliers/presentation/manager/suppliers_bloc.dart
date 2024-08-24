import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'suppliers_event.dart';
part 'suppliers_state.dart';

class SuppliersBloc extends Bloc<SuppliersEvent, SuppliersState> {
  SuppliersBloc() : super(SuppliersInitial()) {
    on<SuppliersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
