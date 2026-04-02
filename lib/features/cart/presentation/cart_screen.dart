import 'package:bookia/core/widgets/app_button.dart';
import 'package:bookia/features/cart/widgets/book_card_in_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_style.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: 15.h, top: 11.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          Center(
            child: Text(
              "My Cart",
              style: AppTextStyle.text24Regular,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          BookCardInCart(),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total:",
                    style: AppTextStyle.text20Regular
                        .copyWith(color: Colors.grey)),
                Text("\$95.00", style: AppTextStyle.text20Regular),
              ],
            ),
          ),
          SizedBox(
            height: 19.h,
          ),
          AppButton(
            title: "Checkout",
          ),
        ],
      ),
    );
  }
}
