import 'package:igclone/features/domain/entities/user/user_entity.dart';
import 'package:igclone/features/domain/repository/firebase_repository.dart';

class SignUpUseCase{
  final FirebaseRepository repository;

  SignUpUseCase({required this.repository});

  Future<void> call(UserEntity userEntity){
    return repository.signUpUser(userEntity);
  }
}