import 'package:bookia/features/home/presentation/widgets/books_grid_view.dart';
import 'package:bookia/features/home/presentation/widgets/home_app_bar.dart';
import 'package:bookia/features/home/presentation/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Column(
        children: [
          HomeAppBar(),
          SizedBox(
            height: 25.h,
          ),
          HomeSlider(),
          SizedBox(
            height: 31.h,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Best Seller",
                style: AppTextStyle.text24Regular,
              )),
          SizedBox(
            height: 15.h,
          ),
          BooksGridView(),
        ],
      ),
    );
  }
}
