import 'package:dashboard/core/constants/app_colors.dart';
import 'package:dashboard/core/constants/controllers.dart';
import 'package:dashboard/core/constants/images.dart';
import 'package:dashboard/core/routing/routes.dart';
import 'package:dashboard/ui/widgets/custom_text.dart';
import 'package:dashboard/ui/widgets/responsive_widget.dart';
import 'package:dashboard/ui/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: AppColors.light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset(Images.logo),
                    ),
                    const Flexible(
                      child: CustomText(
                        text: 'Dash',
                        size: 20,
                        weight: FontWeight.bold,
                        color: AppColors.active,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          Divider(
            color: AppColors.lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItemRoutes
                .map(
                  (item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () async {
                      if (item.route == authenticationPageRoute) {
                        Get.offAllNamed(authenticationPageRoute);
                        menuController
                            .changeActiveItemTo(overviewPageDisplayName);
                      }
                      if (!menuController.isActive(item.name)) {
                        menuController.changeActiveItemTo(item.name);
                        if (ResponsiveWidget.isSmallScreen(context)) Get.back();
                        await navigationController.navigateTo(item.route);
                      }
                    },
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
