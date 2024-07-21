import 'package:akrilii/bloc/dropdown_battom/dropdownbutton_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void dropbownServesButton(BuildContext context, String nowValue) {
  dropdownbuttonBloc.valueChanded = nowValue;
  context.read<DropdownbuttonBloc>().add((OnDropbownEvent()));
}
