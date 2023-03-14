import 'package:flutter/cupertino.dart';
import 'package:routes_test/infra/composition/view_model.dart';
import 'package:routes_test/infra/di/router/router_store.dart';
import 'package:routes_test/infra/di/view_model_store.dart';

mixin Screen on Widget {
  //injected on build
  late ViewModelStore? viewModelStore;
  late RouterStore? routeStore;

  T getViewModel<T extends ViewModel>() {
    if (viewModelStore == null) {
      throw Exception('viewModelStore is null');
    }

    var viewModel = viewModelStore?.getViewModel<T>();
    if (viewModel == null) {
      throw Exception('could not find viewModel with type: $T');
    }
    return viewModel;
  }

  Future<T?> push<T>(
    BuildContext context, {
    required Type page,
    Object? arguments,
  }) async {
    if (routeStore == null) {
      throw Exception('RouteModule is null');
    }

    var route = routeStore!.routes[page]?.call(context);
    return await Navigator.pushNamed<T>(
      context,
      route.runtimeType.toString() ?? '',
    );
  }

  pop<T>(BuildContext context, {T? result}) {
    Navigator.pop<T>(context, result);
  }
}
