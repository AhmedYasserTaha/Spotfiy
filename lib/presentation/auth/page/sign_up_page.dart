import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shopy_app/common/widgets/appbar/app_bar_button.dart';
import 'package:shopy_app/common/widgets/button/app_button.dart';
import 'package:shopy_app/presentation/auth/page/login_page.dart';
import 'package:shopy_app/presentation/auth/widget/bottom_navigation_bar_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(
        title: "Do you have an account ?",
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        titleBotton: "Sign in",
        styleBotton: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.blue,
        ),
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => const LoginPage()));
        },
      ),
      appBar: AppBarButton(
        title: SvgPicture.asset(
          "assets/vectors/spotify_logo.svg",
          height: 40,
          width: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 45),
        child: Column(
          children: [
            const Text(
              "Register",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Gap(50),
            fullnameFeild(context),
            const Gap(16),
            emailFeild(context),
            const Gap(16),
            passwordFeild(context),
            const Gap(33),
            AppButton(
              onPressed: () {},
              title: "creat account",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget fullnameFeild(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: "Full Name",
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget emailFeild(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: "Enter Email",
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget passwordFeild(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: "Password",
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
}
