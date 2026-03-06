import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bookia/core/theme/app_colors.dart';

class CustomNavBarItem extends StatelessWidget {
  final String icon;
  final bool isSelected;

  const CustomNavBarItem({
    super.key,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      colorFilter: isSelected
          ? const ColorFilter.mode(AppColors.mainColor, BlendMode.srcIn)
          : null,
    );
  }
}