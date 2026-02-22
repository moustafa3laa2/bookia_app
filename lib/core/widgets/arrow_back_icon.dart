import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(12.r)
      ),
      child: IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_new_outlined),),
    );
  }
}
