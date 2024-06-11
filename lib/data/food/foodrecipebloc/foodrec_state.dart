part of 'foodrec_bloc.dart';

@immutable
sealed class FoodrecState {}

final class FoodrecInitial extends FoodrecState {}
final class FoodrecLoding extends FoodrecState {}
final class FoodrecLoded extends FoodrecState {}
final class Foodrecerror extends FoodrecState {}
