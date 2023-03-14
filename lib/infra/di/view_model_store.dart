import '../composition/view_model.dart';

abstract class ViewModelStore {
  List<ViewModel?> get viewModels;

  T? getViewModel<T extends ViewModel>();
}
