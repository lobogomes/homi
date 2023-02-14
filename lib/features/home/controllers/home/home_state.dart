part of 'home_controller.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {
  final int index;

  HomeInitialState(this.index);
}
