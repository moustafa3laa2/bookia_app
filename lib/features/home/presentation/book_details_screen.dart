import 'package:bookia/core/theme/app_colors.dart';
import 'package:bookia/core/theme/app_text_style.dart';
import 'package:bookia/core/widgets/arrow_back_icon.dart';
import 'package:bookia/features/home/presentation/widgets/buy_price_row.dart';
import 'package:bookia/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/assets.gen.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 22.r, left: 24.r),
          child: Column(
            children: [
              HomeAppBar(
                widget1: ArrowBackIcon(),
                widget2: SvgPicture.asset(
                  Assets.icons.bookmark,
                  width: 25.w,
                  height: 23.h,
                ),
              ),
              SizedBox(height: 30.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(7.r),
                child: Image.network(
                  "https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_rp_50_assets&w=740&q=80",
                  width: 183.w,
                  height: 271.h,
                ),
              ),
              SizedBox(height: 11.h),
              Text(
                "Black Heart",
                style: AppTextStyle.text30Regular,
              ),
              Text(
                "Broché",
                style: AppTextStyle.text15Regular
                    .copyWith(color: AppColors.mainColor),
              ),
              SizedBox(height: 16.h),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
                style: AppTextStyle.text15Regular.copyWith(fontSize: 12.sp),
              ),
              Spacer(),
              BuyPriceRow(
                price: "₹285",
                title: "Add To Cart",
                priceTextStyle: AppTextStyle.text24Regular,
                buttonTextStyle:
                    AppTextStyle.text20Regular.copyWith(color: Colors.white),
                buttonHeight: 56.h,
                buttonWidth: 212.w,
                buttonRadius: 8.r,
              ),
              SizedBox(height: 19.h),
            ],
          ),
        ),
      ),
    );
  }
}
