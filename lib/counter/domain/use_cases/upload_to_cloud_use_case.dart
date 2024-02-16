import 'package:provider_tests/counter/domain/repositories/counter_repository.dart';

class UploadCounterToCloudUseCase {
  final CounterRepository counterRepository;

  UploadCounterToCloudUseCase({required this.counterRepository});

  Future<bool> uploadCounterToCloud(int counter) async {
    return await counterRepository.uploadCounterToCloud(counter);
  }
}
