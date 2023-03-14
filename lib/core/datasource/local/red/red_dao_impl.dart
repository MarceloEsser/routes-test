import 'package:routes_test/core/datasource/local/red/red_dao.dart';

class RedDaoImpl extends RedDao {
  @override
  Future<List<String>> getReds() {
    return Future(() => ['Red 1', 'Red 2', 'Red 3']);
  }
}
