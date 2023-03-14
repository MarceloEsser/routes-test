import 'package:routes_test/infra/composition/view_model.dart';
import 'package:routes_test/infra/di/core/core_store.dart';
import 'package:routes_test/infra/di/view_model_store.dart';
import 'package:routes_test/scenes/blue/blue_view_model.dart';
import 'package:routes_test/scenes/red/red_view_model.dart';

class ViewModelStoreImpl extends ViewModelStore {
  @override
  List<ViewModel?> get viewModels => [
    RedViewModel(RepositoryStore.redRepository),
    BlueViewModel(),
  ];

  @override
  T? getViewModel<T extends ViewModel>() {
    return viewModels.firstWhere(
      (viewModel) => viewModel is T,
      orElse: () => null,
    ) as T;
  }
}
