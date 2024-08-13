import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/Features/Nav/prestion/view/Nav.dart';
import 'package:meta/meta.dart';

import '../../data/Api.dart';

part 'singup_state.dart';

class SingupCubit extends Cubit<SingupState> {
  SingupCubit() : super(SingupInitial());
  String? result = '';

  Future<void> SingUpCubit({
    required String email,
    required String username,
    required String phone,
    required String password,
    required String password2,
    required String address,
  }) async {
    emit(SingupLoading());
    try {
      result = await ApiSingUp().singUp(
        email: email,
        username: username,
        phone: phone,
        password: password,
        password2: password2,
        address: address,
      );

      if (result == 'User SingUp') {
        emit(SingupLoaded());
      } else {
        emit(SingupError(message: 'Failed to sign up'));
      }
    } catch (e) {
      emit(SingupError(message: 'An error occurred: $e'));
    }
  }
}
