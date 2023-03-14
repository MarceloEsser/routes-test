import 'package:flutter/material.dart';
import 'package:routes_test/infra/composition/screen/screen_builder.dart';
import 'package:routes_test/infra/composition/screen/screen.dart';
import 'package:routes_test/infra/di/router/router_store.dart';
import 'package:routes_test/infra/di/view_model_store.dart';
import 'package:routes_test/infra/di/view_model_store_impl.dart';
import 'package:routes_test/scenes/blue/blue_page.dart';
import 'package:routes_test/scenes/red/red_page.dart';

typedef ScreenBuilder = Screen Function(BuildContext context);

class RouterStoreImpl extends RouterStore {
  final ScreenFactory screenBuilder;
  late final ViewModelStore viewModelModule;

  RouterStoreImpl({
    this.screenBuilder = const ScreenFactory(),
  }) : viewModelModule = ViewModelStoreImpl();

  @override
  Map<Type, WidgetBuilder> get routes => {
        ...RedPage.route(),
        ...BluePage.route(),
      };
}
