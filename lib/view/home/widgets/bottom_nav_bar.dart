import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/core/contants/colors.dart';
import 'package:starbucks/view_model/home_view_model.dart';

class CustomNavBar extends StatelessWidget {
  final HomeController navigationController = Get.put(HomeController());
   CustomNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          _buildNavItem(Icons.access_time, 'Time tracker', 0),
          _buildNavItem(Icons.monetization_on, 'Get money', 1),
          _buildNavItem(Icons.person, 'Profile', 2),
        ],
        currentIndex: navigationController.tabIndex.value,
        selectedItemColor: AppColors.primaryColor,
        onTap: navigationController.changeTabIndex,
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = navigationController.tabIndex.value == index;

    return BottomNavigationBarItem(
      icon: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        child: Icon(
          icon,
          size: isSelected ? 70 : 24,
           
        ),
      ),
      label: label,
    );
  }
}