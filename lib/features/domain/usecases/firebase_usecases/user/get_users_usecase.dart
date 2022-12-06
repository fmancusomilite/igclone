import 'package:igclone/features/domain/entities/user/user_entity.dart';
import 'package:igclone/features/domain/repository/firebase_repository.dart';

class GetUsersUseCase {
  final FirebaseRepository repository;

  GetUsersUseCase({required this.repository});

  Stream<List<UserEntity>> call(UserEntity userEntity){
    return repository.getUsers(userEntity);
  }
}