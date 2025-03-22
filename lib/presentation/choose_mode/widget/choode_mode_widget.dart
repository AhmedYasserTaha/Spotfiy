import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shopy_app/presentation/choose_mode/widget/custom_choode_widget.dart';

class ChooseModeWidget extends StatelessWidget {
  const ChooseModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
