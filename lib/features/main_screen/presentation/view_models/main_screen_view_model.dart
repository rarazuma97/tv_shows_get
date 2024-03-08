import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_shows/features/home/presentation/view/screens/home_screen.dart';
import 'package:tv_shows/features/settings/presentation/view/screens/settings_screen.dart';

class MainScreenViewModel extends ViewModel with StateMixin {


  MainScreenViewModel();

  RxInt selectedBottomBarIndex = 0.obs;
  String userId = '';

  List<Widget> pageList = [
    HomeScreen(),
    SettingsScreen()
  ];

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());  
    change(null, status: RxStatus.success());  
  super.onInit();
  }

  void switchPage(int page){
    selectedBottomBarIndex.value = page;
    update();
  }
}
