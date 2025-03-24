import 'package:flutter/material.dart';
import 'package:shopy_app/common/helpers/is_dark_mode.dart';
import 'package:shopy_app/core/configs/themes/app_colors.dart';

class TabBarHomeWidget extends StatelessWidget {
  const TabBarHomeWidget({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: AppColors.primary,
      // isScrollable: true,
      padding: const EdgeInsets.symmetric(vertical: 20),
      controller: tabController,
      labelColor: context.isDarkMode ? Colors.white : Colors.black,
      tabs: const [
        Text(
          "News",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          "Videos",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          "Artists",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          "Podcasts",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
