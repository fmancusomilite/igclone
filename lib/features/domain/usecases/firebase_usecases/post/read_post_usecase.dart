import 'package:igclone/features/domain/entities/posts/post_entity.dart';
import 'package:igclone/features/domain/repository/firebase_repository.dart';

class ReadPostUseCase{
  final FirebaseRepository repository;

  ReadPostUseCase({required this.repository});

  Stream<List<PostEntity>> call(PostEntity post){
    return repository.readPosts(post);
  }
}