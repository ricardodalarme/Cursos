import 'package:dashboard/core/constants/app_colors.dart';
import 'package:dashboard/core/constants/images.dart';
import 'package:dashboard/ui/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      iconTheme: const IconThemeData(color: AppColors.dark),
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    Images.logo,
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                key.currentState?.openDrawer();
              },
            ),
      title: Row(
        children: [
          Visibility(
              visible: !ResponsiveWidget.isSmallScreen(context),
              child: const CustomText(
                text: 'Dashboard',
                color: AppColors.lightGrey,
                size: 20,
                weight: FontWeight.bold,
              )),
          Expanded(child: Container()),
          IconButton(
              icon: const Icon(
                Icons.settings,
                color: AppColors.dark,
              ),
              onPressed: () {}),
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: AppColors.dark.withOpacity(.7),
                  ),
                  onPressed: () {}),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColors.light, width: 2),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: AppColors.lightGrey,
          ),
          const SizedBox(width: 24),
          const CustomText(
            text: 'Ricardo Dalarme',
            color: AppColors.lightGrey,
          ),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
                color: AppColors.active.withOpacity(.5),
                borderRadius: BorderRadius.circular(30)),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                backgroundColor: AppColors.light,
                child: Icon(
                  Icons.person_outline,
                  color: AppColors.dark,
                ),
              ),
            ),
          )
        ],
      ),
    );
