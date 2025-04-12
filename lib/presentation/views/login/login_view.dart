import 'dart:convert';

import 'package:demo_app_lite/config/extensions/num_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/app_route.dart';

import '../../../domain/shared/device.dart';
import '../../../domain/shared/validators.dart';
import '../../theme/theme_config.dart';
import '../../widgets/app_use.dart';
import '../../widgets/c_button.dart';
import '../../widgets/c_text_field.dart';
import '../../widgets/shared_widget.dart';
import 'cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = context.watch<LoginCubit>();
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (BuildContext context, LoginState state) {
        if (state is LoginSuccessGoogleState) {
          SharedWidget.successSnackBar(context, state.msg);
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoute.homeRoute,
            arguments: state.data,
            (route) => false,
          );
        }
        if (state is LoginSuccessState) {
          SharedWidget.successSnackBar(context, state.msg);
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoute.homeRoute,
            arguments: state.data,
            (route) => false,
          );
        }

        if (state is LoginErrorState) {
          SharedWidget.errorSnackBar(context, state.msg);
        }
      },
      builder: (context, state) {
        return AppUse.scaffold(
          context: context,
          title: ThemeConfig.strings.signIn,
          subtitle: ThemeConfig.strings.signInMessage,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    40.heightBox,
                    PTextField(
                      controller: cubit.cEmail,
                      textCapitalization: TextCapitalization.none,
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(Icons.email),
                      hint: ThemeConfig.strings.email,
                      onChanged: (value) => cubit.inputtedValueUpdate(value),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ThemeConfig.strings.basicErrorMsg;
                        }
                        if (cubit.inputtedValue != null &&
                            (!Validator.isValidEmail(value))) {
                          return ThemeConfig.strings.emailErrorMsg;
                        }
                        return null;
                      },
                    ),
                    30.heightBox,
                    PTextField(
                      controller: cubit.cPassword,
                      observeText: cubit.observeText,
                      suffixIcon: InkWell(
                        onTap: () {
                          cubit.toggle();
                        },
                        splashColor: Colors.transparent,
                        child: Icon(
                          cubit.observeText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: ThemeConfig.colors.textFormFieldColor,
                        ),
                      ),
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(Icons.lock),
                      hint: ThemeConfig.strings.password,
                      validator: (value) {
                        if (cubit.inputtedValue != null &&
                            (value == null || value.isEmpty)) {
                          return ThemeConfig.strings.basicErrorMsg;
                        }
                        return null;
                      },
                      onChanged: (value) => cubit.inputtedValueUpdate(value),
                    ),
                    80.heightBox,
                    SizedBox(
                      width: ThemeConfig.dimens.width,
                      height: 45,
                      child: CButton(
                        title:
                            state is LoginLoadingState
                                ? Center(
                                  child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: CircularProgressIndicator(
                                      color: ThemeConfig.colors.whiteColor,
                                    ),
                                  ),
                                )
                                : Text(
                                  ThemeConfig.strings.signIn,
                                  style: ThemeConfig.styles.style14.copyWith(
                                    color: ThemeConfig.colors.whiteColor,
                                  ),
                                ),
                        onTap:
                            !cubit.userInteracts() ||
                                    _formKey.currentState == null ||
                                    !_formKey.currentState!.validate()
                                ? null
                                : () async {
                                  DeviceUtils.hideKeyboard(context);
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setBool('isLoggedIn', true);
                                  prefs.setString(
                                    'userDetails',
                                    jsonEncode({
                                      "name": cubit.cEmail.text.split('@')[0],
                                      "email": cubit.cEmail.text,
                                    }),
                                  );
                                  Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    AppRoute.homeRoute,
                                    arguments: {
                                      "name": cubit.cEmail.text.split('@')[0],
                                      "email": cubit.cEmail.text,
                                    },
                                    (route) => false,
                                  );
                                  // cubit.loginSubmit();
                                },
                        color: ThemeConfig.colors.appColor,
                        titleStyle: ThemeConfig.styles.style16.copyWith(
                          color: ThemeConfig.colors.whiteColor,
                        ),
                      ),
                    ),
                    30.heightBox,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
