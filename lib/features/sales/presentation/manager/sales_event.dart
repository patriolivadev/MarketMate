part of 'sales_bloc.dart';

@immutable
abstract class SalesEvent {}

class ActionGetRole extends SalesEvent {
  final NoParams noParams;

  ActionGetRole({required this.noParams});
}
