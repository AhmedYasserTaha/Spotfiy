import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shopy_app/common/widgets/button/app_button.dart';
import 'package:shopy_app/core/service/service_lecator.dart';
import 'package:shopy_app/data/model/auth/create_user_rep.dart';
import 'package:shopy_app/domain/useCases/auth/sing_up.dart';
import 'package:shopy_app/presentation/root/pages/root_page.dart';

class CreateAcvountWdiget extends StatelessWidget {
  const CreateAcvountWdiget({
    super.key,
    required this.fullName,
    required this.email,
    required this.password,
  });

  final TextEditingController fullName;
  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: () async {
        try {
          final result = await serviceLecator<SignUpUseCase>().call(
            params: CreateUserRep(
              fullName: fullName.text.trim(),
              email: email.text.trim(),
              password: password.text.trim(),
            ),
          );
          result.fold(
            (l) {
              log("Sign Up Error: $l");
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(l)));
            },
            (r) {
              log("Sign Up Successful");
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const RootPage()),
                (route) => false,
              );
            },
          );
        } catch (e) {
          log("Exception during sign up: $e");
        }
      },
      title: "Create account",
      style: const TextStyle(color: Colors.white),
    );
  }
}
