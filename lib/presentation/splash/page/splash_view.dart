import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopy_app/presentation/intro/page/get_started_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      return Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const GetStartedpage();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset('assets/vectors/spotify_logo.svg')),
    );
  }
}
