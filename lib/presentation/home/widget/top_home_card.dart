import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopHomeCard extends StatelessWidget {
  const TopHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 160,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset("assets/vectors/home_top_card.svg"),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Image.asset("assets/images/home_artist.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
