import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tv_shows/base/utils/namespaces/app_colors.dart';
import 'package:tv_shows/features/main_screen/presentation/view/widgets/bottom_nav_bar.dart';
import 'package:tv_shows/features/main_screen/presentation/view_models/main_screen_view_model.dart';

class MainScreen extends Screen<MainScreenViewModel> {
  MainScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx((user) {
      return ResponsiveBuilder(
        builder: (context, size) {
          return Scaffold(
            backgroundColor: AppColors.primary,
            body: viewModel.pageList.elementAt(viewModel.selectedBottomBarIndex.value),
            bottomNavigationBar: size.deviceScreenType == DeviceScreenType.desktop
              ? const SizedBox.shrink()
              : BottomNavBarCustom(
                switchPage: (index) => viewModel.switchPage(index),
                selectedBottomBarIndex: viewModel.selectedBottomBarIndex,
            ),
          );
        }
      );
    },
    onLoading: Container(
        color: AppColors.primary,
        child: const Center(child: CircularProgressIndicator()
        )
      )
    );
  }
}
