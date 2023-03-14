import 'package:routes_test/core/datasource/local/red/red_dao.dart';
import 'package:routes_test/core/datasource/local/red/red_dao_impl.dart';
import 'package:routes_test/core/repository/red/red_repository.dart';
import 'package:routes_test/core/repository/red/red_repository_impl.dart';

class RepositoryStore {
  static RedRepository redRepository = RedRepositoryImpl(DataSourceStore.redDao);
}

class DataSourceStore {
  static RedDao redDao = RedDaoImpl();
}