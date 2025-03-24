import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopy_app/common/helpers/is_dark_mode.dart';
import 'package:shopy_app/common/widgets/appbar/app_bar_button.dart';
import 'package:shopy_app/core/configs/themes/app_colors.dart';
import 'package:shopy_app/presentation/home/widget/tap_bar_home_widget.dart';
import 'package:shopy_app/presentation/home/widget/top_home_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarButton(
        title: SvgPicture.asset(
          "assets/vectors/spotify_logo.svg",
          height: 40,
          width: 40,
        ),
        hideBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TopHomeCard(),
            TabBarHomeWidget(tabController: tabController),
          ],
        ),
      ),
    );
  }
}
