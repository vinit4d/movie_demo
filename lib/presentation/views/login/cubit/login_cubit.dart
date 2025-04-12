import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  bool observeText = true;

  final cEmail = TextEditingController(text: "");
  final cPassword = TextEditingController(text: "");
  String? inputtedValue;

  bool userInteracts() => inputtedValue != null;

  void toggle() {
    observeText = !observeText;
    emit(LoginRefreshState());
  }

  void inputtedValueUpdate(value) {
    inputtedValue = value;
    emit(LoginRefreshState());
  }
}
