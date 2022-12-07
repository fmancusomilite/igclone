import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igclone/features/domain/entities/user/user_entity.dart';
import 'package:igclone/features/presentation/cubit/post/post_cubit.dart';
import 'package:igclone/features/presentation/page/post/widget/upload_post_main_widget.dart';
import 'package:igclone/injection_container.dart' as di;

class UploadPostPage extends StatefulWidget {
  final UserEntity currentUser;
  const UploadPostPage({Key? key, required this.currentUser}) : super(key: key);

  @override
  State<UploadPostPage> createState() => _UploadPostPageState();
}

class _UploadPostPageState extends State<UploadPostPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostCubit>(
      create: (context) => di.sl<PostCubit>(),
      child: UploadPostMainWidget(currentUser: widget.currentUser),
    );
  }
}
