import 'package:bookia/core/theme/app_text_style.dart';
import 'package:bookia/core/widgets/books_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 51.h,top: 11.h),
      child: Column(children: [
        Center(child: Text("Wishlist",style: AppTextStyle.text24Regular,),),
        SizedBox(height: 31.h,),


      ],),
    );
  }
}
