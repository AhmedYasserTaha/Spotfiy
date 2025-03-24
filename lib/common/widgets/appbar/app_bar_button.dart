import 'package:flutter/material.dart';
import 'package:shopy_app/common/helpers/is_dark_mode.dart';

class AppBarButton extends StatelessWidget implements PreferredSizeWidget {
  const AppBarButton({super.key, this.title, this.hideBack = false});
  final Widget? title;
  final bool hideBack;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading:
          hideBack
              ? null
              : IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        context.isDarkMode
                            ? Color.fromARGB(31, 65, 65, 65)
                            : Colors.black.withOpacity(0.03),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 15,
                    color: context.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
              ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
