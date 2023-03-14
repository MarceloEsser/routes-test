import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:routes_test/core/repository/red/red_repository.dart';
import 'package:routes_test/infra/composition/view_model.dart';

class RedViewModel extends ChangeNotifier with ViewModel {
  final RedRepository redRepository;

  RedViewModel(this.redRepository);

  Future getRed() async {
    var result = await redRepository.getReds();
    log(result.toString());
  }
}