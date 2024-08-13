part of 'signout_cubit.dart';

@immutable
sealed class SignoutState {}

final class SignoutInitial extends SignoutState {}
final class SingoutLoading extends SignoutState {}
final class SingoutLoaded extends SignoutState {}
final class SignoutError extends SignoutState {}
