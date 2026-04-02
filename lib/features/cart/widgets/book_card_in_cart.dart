import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_style.dart';

class BookCardInCart extends StatelessWidget {
  const BookCardInCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/cardimage.png",
              width: 100.w,
              height: 118.h,
              fit: BoxFit.cover,
            ),
          ),

           SizedBox(width: 20.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      "The Republic",
                      style: AppTextStyle.text18Regular.copyWith(color: Colors.grey),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black26),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.close, size: 16),
                      ),
                    )
                  ],
                ),

                 SizedBox(height: 6.h),

                 Text(
                  "₹285",
                  style: AppTextStyle.text15Regular.copyWith(fontSize: 16)
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    _buildButton(Icons.add),
                     SizedBox(width: 15.w),
                     Text(
                      "01",
                      style: AppTextStyle.text18Regular
                    ),
                     SizedBox(width: 15.w),
                    _buildButton(Icons.remove),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildButton(IconData icon) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Icon(icon, size: 18),
    );
  }
}