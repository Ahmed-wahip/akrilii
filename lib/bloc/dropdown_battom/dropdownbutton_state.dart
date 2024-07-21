part of 'dropdownbutton_bloc.dart';

@immutable
abstract class DropdownbuttonState {}

class DropdownbuttonInitial extends DropdownbuttonState {}

class OnDropbownState extends DropdownbuttonState {
  final String valuoString;

  OnDropbownState({required this.valuoString});
}
