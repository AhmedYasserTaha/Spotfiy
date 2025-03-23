import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shopy_app/presentation/choose_mode/cubit/theme_cubit.dart';
import 'package:shopy_app/presentation/choose_mode/widget/custom_choode_widget.dart';
import 'package:shopy_app/presentation/auth/page/sign_in_sign_up_page.dart';

class ChooseModeWidget extends StatelessWidget {
  const ChooseModeWidget({super.key});

  void _navigateToSignInSignUpPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignInSignUpPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            CustomModeWidget(
              onTap: () {
                context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                _navigateToSignInSignUpPage(context);
              },
              child: SvgPicture.asset(
                'assets/vectors/moon.svg',
                fit: BoxFit.none,
              ),
            ),
            const Gap(15),
            const Text(
              "Dark mode",
              style: TextStyle(
                color: Color(0xffDADADA),
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const Gap(40),
        Column(
          children: [
            CustomModeWidget(
              onTap: () {
                context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                _navigateToSignInSignUpPage(context);
              },
              child: SvgPicture.asset(
                "assets/vectors/sun.svg",
                fit: BoxFit.none,
              ),
            ),
            const Gap(15),
            const Text(
              "Light mode",
              style: TextStyle(
                color: Color(0xffDADADA),
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
