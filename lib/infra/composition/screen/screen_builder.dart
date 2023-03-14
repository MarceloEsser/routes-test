import 'package:routes_test/infra/composition/screen/screen.dart';
import 'package:routes_test/infra/di/router/router_store.dart';
import 'package:routes_test/infra/di/router/router_store_impl.dart';
import 'package:routes_test/infra/di/view_model_store.dart';
import 'package:routes_test/infra/di/view_model_store_impl.dart';

class ScreenFactory {
  final ViewModelStore? viewModelStore;
  final RouterStore? routeStore;

  static ScreenFactory instance = const ScreenFactory();

  const ScreenFactory({this.viewModelStore, this.routeStore});

  void _init() {
    instance = ScreenFactory(
      viewModelStore: ViewModelStoreImpl(),
      routeStore: RouterStoreImpl(),
    );
  }

  Screen build({
    Screen Function()? child,
  }) {
    if (viewModelStore == null && routeStore == null) {
      _init();
    }

    var screen = child?.call();
    screen?.viewModelStore = instance.viewModelStore;
    screen?.routeStore = instance.routeStore;

    if (screen == null) {
      throw Exception('SceneBuilder: screen is null');
    }

    return screen;
  }
}
