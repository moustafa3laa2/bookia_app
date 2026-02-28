import 'package:bookia/features/auth/presentation/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpRow extends StatelessWidget {
  const OtpRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OtpTextField(),
        SizedBox(
          width: 6.w,
        ),
        OtpTextField(),
        SizedBox(
          width: 6.w,
        ),
        OtpTextField(),
        SizedBox(
          width: 6.w,
        ),
        OtpTextField(),
        SizedBox(
          width: 6.w,
        ),
        OtpTextField(),
        SizedBox(
          width: 6.w,
        ),
        OtpTextField(),
      ],
    );
  }
}
