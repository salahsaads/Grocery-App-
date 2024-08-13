import 'package:bloc/bloc.dart';
import 'package:grocery/Features/SingUp/presation/view_model/post_model.dart';
import 'package:grocery/Features/Singin/data/Api.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  PostModel? result;

  Future<void> SingInCubit({
    required String username,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      result = await ApiSinin().singIn(
        username: username,
        password: password,
      );

      emit(LoginLoaded());
    } catch (e) {
      emit(LoginError());
    }
  }
}
