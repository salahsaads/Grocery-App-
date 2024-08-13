part of 'singup_cubit.dart';

@immutable
sealed class SingupState {}

final class SingupInitial extends SingupState {}

final class SingupLoading extends SingupState {}

final class SingupLoaded extends SingupState {}

final class SingupError extends SingupState {
  final String message;
  SingupError({required this.message});
}
