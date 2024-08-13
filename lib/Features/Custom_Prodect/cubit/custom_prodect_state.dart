part of 'custom_prodect_cubit.dart';

@immutable
sealed class CustomProdectState {}

final class CustomProdectInitial extends CustomProdectState {}
final class CustomProdectLoading extends CustomProdectState {}
final class CustomProdectLoaded extends CustomProdectState {}
final class CustomProdectError extends CustomProdectState {}
