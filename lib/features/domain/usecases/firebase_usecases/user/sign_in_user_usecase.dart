import 'package:igclone/features/domain/entities/user/user_entity.dart';
import 'package:igclone/features/domain/repository/firebase_repository.dart';

class SignInUserUseCase {
  final FirebaseRepository repository;

  SignInUserUseCase({required this.repository});

  Future<void> call(UserEntity userEntity){
    return repository.signInUser(userEntity);
  }
}