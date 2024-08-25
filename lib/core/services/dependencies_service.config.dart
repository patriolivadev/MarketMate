// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:market_mate/features/product/presentation/manager/product_bloc.dart'
    as _i143;
import 'package:market_mate/features/sales/presentation/manager/sales_bloc.dart'
    as _i823;
import 'package:market_mate/features/suppliers/presentation/manager/suppliers_bloc.dart'
    as _i687;
import 'package:market_mate/features/user/presentation/manager/user_bloc.dart'
    as _i969;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i143.ProductBloc>(() => _i143.ProductBloc());
    gh.factory<_i823.SalesBloc>(() => _i823.SalesBloc());
    gh.factory<_i687.SuppliersBloc>(() => _i687.SuppliersBloc());
    gh.factory<_i969.UserBloc>(() => _i969.UserBloc());
    return this;
  }
}
