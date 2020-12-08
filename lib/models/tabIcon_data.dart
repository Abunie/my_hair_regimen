import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/media/bottom_bar_icons/routine.png',
      selectedImagePath: 'assets/media/bottom_bar_icons/routine_selected.png',
      index: 0,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/media/bottom_bar_icons/products.png',
      selectedImagePath: 'assets/media/bottom_bar_icons/products_selected.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/media/bottom_bar_icons/profile.png',
      selectedImagePath: 'assets/media/bottom_bar_icons/profile_selected.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/media/bottom_bar_icons/notes.png',
      selectedImagePath: 'assets/media/bottom_bar_icons/notes_selected.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];


}
