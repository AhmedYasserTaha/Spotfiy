import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shopy_app/common/widgets/button/app_button.dart';

class GetStartedpage extends StatelessWidget {
  const GetStartedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/image1.png"),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 37),
              child: Column(
                children: [
                  SvgPicture.asset("assets/vectors/spotify_logo.svg"),
                  const Spacer(),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Enjoy listening to music",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Gap(21),
                  const Text(
                    textAlign: TextAlign.center,
                    "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Sagittis enim\npurus sed phasellus. Cursus ornare id\nscelerisque aliquam.",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff797979),
                    ),
                  ),
                  const Gap(35),
                  AppButton(
                    onPressed: () {},
                    title: "Get started",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.15)),
        ],
      ),
    );
  }
}
