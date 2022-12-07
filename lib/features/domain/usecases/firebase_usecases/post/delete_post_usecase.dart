import 'package:igclone/features/domain/entities/posts/post_entity.dart';
import 'package:igclone/features/domain/repository/firebase_repository.dart';

class DeletePostUseCase{
  final FirebaseRepository repository;

  DeletePostUseCase({required this.repository});

  Future<void> call(PostEntity post){
    return repository.deletePost(post);
  }
}