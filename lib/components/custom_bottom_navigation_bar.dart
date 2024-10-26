import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.mainPageController, required this.o3dController, required this.textsPageController});
  final PageController mainPageController;
  final O3DController o3dController;
  final PageController textsPageController;

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (page) {
          widget.mainPageController.animateToPage(page,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease);
          widget.textsPageController.animateToPage(page,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease);

          if (page == 0) {
            widget.o3dController.cameraTarget(-.25, 1.5, 1.5);
            widget.o3dController.cameraOrbit(0, 90, 1);
          } else if (page == 1) {
            widget.o3dController.cameraTarget(0, 1.8, 0);
            widget.o3dController.cameraOrbit(270, 90, 1.5);
          } else if (page == 2) {
            widget.o3dController.cameraTarget(0, 3, 0);
            widget.o3dController.cameraOrbit(0, 90, -3);
          }

          setState(() {
            currentPage = page;
          });
        },

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.timer_outlined), label: 'Journal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ]);
  }
}
