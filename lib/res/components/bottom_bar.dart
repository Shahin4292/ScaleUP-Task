import 'package:flutter/material.dart';
import 'package:scale_up_task/Res/colors/app_colors.dart';

import '../../view/movie_dashboard_screen/movie_dashboard_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  List<Widget> _pages = [];

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      MovieDashboardScreen(),
      Center(
        child: Text(
          "No Page 1",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      Center(
        child: Text(
          "No Page 2",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      Center(
        child: Text(
          "No Page 3",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: IndexedStack(
        index: currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        height: 62,
        decoration: BoxDecoration(
          color: Color(0xFF1D1F24), // Dark background
          borderRadius: BorderRadius.circular(40), // Rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, Icons.home_outlined, 0),
            _buildNavItem(Icons.tv, Icons.tv_outlined, 1),
            _buildNavItem(Icons.download, Icons.download_outlined, 2),
            _buildNavItem(Icons.person, Icons.person_outline, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
      IconData selectedIcon, IconData unselectedIcon, int index) {
    bool isSelected = currentIndex == index;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Icon(
        isSelected ? selectedIcon : unselectedIcon,
        color: isSelected ? Colors.red : Colors.grey,
        size: 25,
      ),
    );
  }
}
