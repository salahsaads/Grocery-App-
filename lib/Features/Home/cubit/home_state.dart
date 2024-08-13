part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeLoading extends HomeState {}
final class HomeLoaded extends HomeState {


    final List< dynamic> categories;

   HomeLoaded(this.categories);
    @override
     List<Object> get props => [categories];

  get data => null;
}
final class HomeError extends HomeState {

    final String message;

   HomeError(this.message);
}


