 import 'package:get/get.dart';
import 'package:json_translator/Core/Data/data_state.dart';


abstract class ControllerImp <T> extends GetxController {
  DataState<T> state = DataInitial<T>();

  void emit(DataState<T> value) {
    state = value;
    update();
  }

  bool get stateReady{
    return state is! DataLoading;
  }

  bool get stateUnReady{
    return state is DataLoading;
  }
}


