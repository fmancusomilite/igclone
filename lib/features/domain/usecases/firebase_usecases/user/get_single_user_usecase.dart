import 'package:igclone/features/domain/entities/user/user_entity.dart';
import 'package:igclone/features/domain/repository/firebase_repository.dart';

class GetSingleUserUseCase {
  final FirebaseRepository repository;
  
  GetSingleUserUseCase({required this.repository});
  
  Stream<List<UserEntity>> call(String uid){
    return repository.getSingleUser(uid);
  }
}