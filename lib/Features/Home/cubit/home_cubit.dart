import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/api.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<dynamic> data=[];
  Future<void> fetchCategories() async {
    emit(HomeLoading());
    try {
      data = await getAllCategories();

      emit(HomeLoaded(data));
    } catch (e) {
      emit(HomeError('An error occurred: $e'));
    }
  }
}
