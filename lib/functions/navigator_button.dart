import 'package:akrilii/bloc/navigator_batton/navigator_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void navigtorButton(BuildContext context, int index) {
  context.read<NavigatorBarBloc>().add((TransitionEvent()));
  blocNavigator.currenIndex = index;
}
