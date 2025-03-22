import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shopy_app/common/helpers/is_dark_mode.dart';
import 'package:shopy_app/common/widgets/appbar/app_bar_button.dart';
import 'package:shopy_app/common/widgets/button/app_button.dart';
import 'package:shopy_app/presentation/auth/page/sign_up_page.dart';

class SignInSignUpPage extends StatelessWidget {
  const SignInSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: AppBarButton(),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset("assets/vectors/top_pattern.svg"),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset("assets/vectors/bottom_pattern.svg"),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/images/auth_bg.png'),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/vectors/spotify_logo.svg'),
                  const Gap(55),
                  const Text(
                    "Enjoy listening to music",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const Gap(20),
                  const Text(
                    textAlign: TextAlign.center,
                    "Spotify is a proprietary Swedish audio\nstreaming and media services provider",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff797979),
                    ),
                  ),
                  const Gap(30),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: AppButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                          title: "Register",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Gap(80),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:
                                  context.isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
