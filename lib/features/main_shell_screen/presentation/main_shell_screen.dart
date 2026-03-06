import 'package:bookia/features/cart/presentation/cart_screen.dart';
import 'package:bookia/features/home/cubit/home_cubit.dart';
import 'package:bookia/features/home/presentation/home_screen.dart';
import 'package:bookia/features/main_shell_screen/presentation/widgets/custom_nav_bar_item.dart';
import 'package:bookia/features/profile/presentation/profile_screen.dart';
import 'package:bookia/features/wishlist/presentation/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../gen/assets.gen.dart';

class MainShellScreen extends StatefulWidget {
  const MainShellScreen({super.key});

  @override
  State<MainShellScreen> createState() => _MainShellScreenState();
}

class _MainShellScreenState extends State<MainShellScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    BlocProvider(
      create: (context) => HomeCubit()..getHomeData(),
      child: HomeScreen(),
    ),
    WishlistScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              icon: Assets.icons.home,
              isSelected: currentIndex == 0,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              icon: Assets.icons.bookmark,
              isSelected: currentIndex == 1,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              icon: Assets.icons.category,
              isSelected: currentIndex == 2,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: CustomNavBarItem(
              icon: Assets.icons.profile,
              isSelected: currentIndex == 3,
            ),
            label: "",
          ),
        ],
      ),
      body: SafeArea(child: screens[currentIndex]),
    );
  }
}
