import 'package:dashboard/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color? topColor;
  final bool isActive;
  final Function() onTap;

  const InfoCard({
    Key? key,
    required this.title,
    required this.value,
    required this.onTap,
    this.isActive = false,
    this.topColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 6),
                color: AppColors.lightGrey.withOpacity(.1),
                blurRadius: 12,
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: topColor ?? AppColors.active,
                    height: 5,
                  ))
                ],
              ),
              Expanded(child: Container()),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '$title\n',
                        style: TextStyle(
                          fontSize: 16,
                          color:
                              isActive ? AppColors.active : AppColors.lightGrey,
                        )),
                    TextSpan(
                        text: value,
                        style: TextStyle(
                          fontSize: 40,
                          color: isActive ? AppColors.active : AppColors.dark,
                        )),
                  ],
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
