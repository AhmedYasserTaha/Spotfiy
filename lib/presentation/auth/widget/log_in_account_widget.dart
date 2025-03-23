import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shopy_app/common/widgets/button/app_button.dart';
import 'package:shopy_app/core/service/service_lecator.dart';
import 'package:shopy_app/data/model/auth/sign_in_user_rep.dart';
import 'package:shopy_app/domain/useCases/auth/sign_in.dart';
import 'package:shopy_app/presentation/root/pages/root_page.dart';

class LoginAccountWidget extends StatefulWidget {
  const LoginAccountWidget({
    super.key,
    required this.email,
    required this.password,
  });

  final TextEditingController email;
  final TextEditingController password;

  @override
  State<LoginAccountWidget> createState() => _LoginAccountWidgetState();
}

class _LoginAccountWidgetState extends State<LoginAccountWidget> {
  bool isLoading = false;

  Future<void> _login() async {
    setState(() {
      isLoading = true;
    });

    try {
      final result = await serviceLecator<SignInUseCase>().call(
        params: SignInUserRep(
          email: widget.email.text.trim(),
          password: widget.password.text.trim(),
        ),
      );

      result.fold(
        (l) {
          log("Sign In Error: $l");
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(l)));
        },
        (r) {
          log("Sign In Successful");
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const RootPage()),
            (route) => false,
          );
        },
      );
    } catch (e) {
      log("Exception during sign In: $e");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: isLoading ? null : _login,
      isLoading: isLoading,
      title: "Login",
    );
  }
}
