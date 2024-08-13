import 'package:bloc/bloc.dart';
import 'package:grocery/core/network/singoutApi.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'signout_state.dart';

class SignoutCubit extends Cubit<SignoutState> {
  SignoutCubit() : super(SignoutInitial());

  String? result;
  Future<void> SingOutCubit() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    emit(SingoutLoading());
    try {
      result = await SignoutApi().signout();

      if (result == 'Logout') {
        emit(SingoutLoaded());
        await prefs.setString("token", '0');
      } else {
        emit(SignoutError());
      }
    } catch (e) {
      emit(SignoutError());
    }
  }
}
