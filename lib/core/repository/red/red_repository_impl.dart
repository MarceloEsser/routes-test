import 'package:routes_test/core/datasource/local/red/red_dao.dart';
import 'package:routes_test/core/repository/red/red_repository.dart';

class RedRepositoryImpl implements RedRepository {
  final RedDao redDao;

  RedRepositoryImpl(this.redDao);

  @override
  Future<List<String>> getReds() async {
    return await redDao.getReds();
  }
}