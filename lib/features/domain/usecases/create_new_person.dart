import '../../../core/usecases/usecase.dart';
import '../repositories/i_person_repository.dart';

class CreateNewPerson implements UseCase {
  final IPersonRepository repository;

  CreateNewPerson(this.repository);

  @override
  Future call(params) {
    return repository.createNewPerson(params);
  }
}
