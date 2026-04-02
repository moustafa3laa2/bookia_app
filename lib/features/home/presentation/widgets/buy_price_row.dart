import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_style.dart';

class BuyPriceRow extends StatelessWidget {
  final String price;
  final String title;
  final TextStyle priceTextStyle;
  final TextStyle buttonTextStyle;
  final double buttonHeight;
  final double buttonWidth;
  final double buttonRadius;
  final void Function()? onTap;
  const BuyPriceRow({super.key, required this.price, required this.title, required this.buttonHeight, required this.buttonWidth, required this.buttonRadius, required this.priceTextStyle, required this.buttonTextStyle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          price,
          style: priceTextStyle,
        ),
        SizedBox(
          height: buttonHeight.h,
          width: buttonWidth.w,
          child: InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 6.h),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(buttonRadius.r),
              ),
              child: Text(
                title,
                style: buttonTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
