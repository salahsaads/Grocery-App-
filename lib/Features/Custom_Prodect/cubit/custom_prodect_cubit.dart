import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/api.dart';

part 'custom_prodect_state.dart';

class CustomProdectCubit extends Cubit<CustomProdectState> {
  CustomProdectCubit() : super(CustomProdectInitial());
  List<dynamic> data = [];
  Future<void> fetchCategories(String id) async {
    emit(CustomProdectLoading());
    try {
      data = await getCategorie(id);

      emit(CustomProdectLoaded());
    } catch (e) {
      emit(CustomProdectError());
    }
  }
}
