import 'package:flutter/material.dart';
import '../styling/themes.dart';

class MyBottomBar extends StatefulWidget {
  int bottomIndex;
  ValueChanged<int> bottomMenuChanged;
  MyBottomBar({super.key,required this.bottomIndex, required this.bottomMenuChanged});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 26,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      currentIndex: widget.bottomIndex,
      items: List.generate(
        bottomIcons.length,
        (index) => BottomNavigationBarItem(
          icon: bottomIcons[index],
          activeIcon: bottomIconsActive[index],
          label: bottomLabels[index],
          backgroundColor: Colors.grey,
        ),
      ),
      onTap: (index) {
        //widget.bottomIndex = index;
        widget.bottomMenuChanged(index);
      },
    );
  }

  Size get preferredSize => const Size.fromHeight(kBottomNavigationBarHeight);
}
