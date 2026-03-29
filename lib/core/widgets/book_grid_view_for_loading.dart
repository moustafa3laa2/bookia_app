import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookGridViewForLoading extends StatelessWidget {
  const BookGridViewForLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 11.h,
              crossAxisSpacing: 11.w,
              childAspectRatio: 163 / 281),
          itemBuilder: (context, index) => Container(
            height: 281,
            width: 163,
            color: Colors.grey,
          )),
    );
  }
}
