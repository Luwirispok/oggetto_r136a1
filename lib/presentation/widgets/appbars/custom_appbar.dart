import 'package:flutter/material.dart';
import 'package:oggetto/core/extension/empty_through_num.dart';
import 'package:oggetto/presentation/resources/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.title, this.backgroundColor, this.isBack = false}) : super(key: key);

  final String? title;
  final Color? backgroundColor;
  final bool isBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: backgroundColor,
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isBack ? IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 24,
              color: AppColors.onBackground,
            ),
          ) : 0.emptyWidth,
          Text(
            title ?? '',
            style: const TextStyle(
              color: AppColors.onBackground,
              fontSize: 22,
              height: 28 / 22,
            ),
          ),
          isBack ? 24.emptyWidth : 0.emptyWidth,
        ],
      ),
    );
  }
}
