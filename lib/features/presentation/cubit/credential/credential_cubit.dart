import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:igclone/features/domain/entities/user/user_entity.dart';
import 'package:igclone/features/domain/usecases/firebase_usecases/user/sign_in_user_usecase.dart';
import '../../../domain/usecases/firebase_usecases/user/sign_up_user_usecase.dart';

part 'credential_state.dart';

class CredentialCubit extends Cubit<CredentialState> {
  final SignInUserUseCase signInUserUseCase;
  final SignUpUseCase signUpUseCase;

  CredentialCubit(
      {required this.signInUserUseCase, required this.signUpUseCase})
      : super(CredentialInitial());

  Future<void> signInUser({required UserEntity user}) async {
    emit(CredentialLoading());
    try{
      await signInUserUseCase.call(user);
      emit(CredentialSuccess());
    }on SocketException catch(_){
      emit(CredentialFailure());
    } catch(_){
      emit(CredentialFailure());
    }
  }
}
