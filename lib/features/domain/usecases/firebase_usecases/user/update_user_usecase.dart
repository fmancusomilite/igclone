import 'package:igclone/features/domain/entities/user/user_entity.dart';
import 'package:igclone/features/domain/repository/firebase_repository.dart';

class UpdateUserUseCase {
  final FirebaseRepository repository;

  UpdateUserUseCase({required this.repository});

  Future<void> call(UserEntity userEntity){
    return repository.updateUser(userEntity);
  }
}