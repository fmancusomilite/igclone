import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igclone/features/domain/entities/posts/post_entity.dart';
import 'package:igclone/features/presentation/cubit/post/post_cubit.dart';
import 'package:igclone/features/presentation/page/post/widget/update_post_main_widget.dart';
import 'package:igclone/injection_container.dart' as di;

class UpdatePostPage extends StatefulWidget {
  final PostEntity post;

  const UpdatePostPage({Key? key, required this.post}) : super(key: key);

  @override
  State<UpdatePostPage> createState() => _UpdatePostPageState();
}

class _UpdatePostPageState extends State<UpdatePostPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostCubit>(
      create: (context) => di.sl<PostCubit>(),
      child: UpdatePostMainWidget(post: widget.post),
    );
  }
}
