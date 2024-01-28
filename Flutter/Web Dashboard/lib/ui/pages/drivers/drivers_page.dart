import 'package:dashboard/core/constants/controllers.dart';
import 'package:dashboard/ui/pages/drivers/widgets/driver_table.dart';
import 'package:dashboard/ui/widgets/custom_text.dart';
import 'package:dashboard/ui/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: const [
              DriversTable(),
            ],
          ),
        ),
      ],
    );
  }
}
