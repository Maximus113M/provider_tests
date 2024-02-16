abstract class CounterDataSource {
  Future<bool> uploadCounterToCloud(int counter);
}

class CounterDataSourceImpl extends CounterDataSource {
  @override
  Future<bool> uploadCounterToCloud(int counter) async {
    //implement uploadCounterToCloud
    return true;
  }
}
