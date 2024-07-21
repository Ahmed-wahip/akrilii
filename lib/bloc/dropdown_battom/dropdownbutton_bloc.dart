import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dropdownbutton_event.dart';
part 'dropdownbutton_state.dart';

DropdownbuttonBloc dropdownbuttonBloc = DropdownbuttonBloc();

class DropdownbuttonBloc
    extends Bloc<DropdownbuttonEvent, DropdownbuttonState> {
  String valueChanded = "Choose type of service";
  DropdownbuttonBloc() : super(DropdownbuttonInitial()) {
    on<DropdownbuttonEvent>(
      (event, emit) {
        event = OnDropbownEvent();
        emit(
          OnDropbownState(
            valuoString: valueChanded,
          ),
        );
      },
    );
  }
}
