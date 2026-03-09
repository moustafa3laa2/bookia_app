import 'package:flutter/material.dart';


class HomeAppBar extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;
  const HomeAppBar({super.key, required this.widget1, required this.widget2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       widget1,
        widget2
      ],
    );
  }
}
