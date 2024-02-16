import 'package:provider_tests/counter/data/datasources/counter_data_source.dart';
import 'package:provider_tests/counter/domain/repositories/counter_repository.dart';

class CounterRepositoryImpl extends CounterRepository {
  final CounterDataSource counterDataSource;

  CounterRepositoryImpl({required this.counterDataSource});
  @override
  Future<bool> uploadCounterToCloud(int counter) async {
    return await counterDataSource.uploadCounterToCloud(counter);
  }
}
