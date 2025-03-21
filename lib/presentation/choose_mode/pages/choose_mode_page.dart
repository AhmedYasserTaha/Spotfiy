import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shopy_app/common/widgets/button/app_button.dart';
import 'package:shopy_app/presentation/choose_mode/widget/custom_choode_widget.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/image2.png"),
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.15)),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 37),
            child: Column(
              children: [
                SvgPicture.asset("assets/vectors/spotify_logo.svg"),
                const Spacer(),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Choose mode",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CustomModeWidget(
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
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),

                    const Gap(40),
                    Column(
                      children: [
                        CustomModeWidget(
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
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(150),
                AppButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const ChooseModePage(),
                    //   ),
                    // );
                  },
                  title: "Get started",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
