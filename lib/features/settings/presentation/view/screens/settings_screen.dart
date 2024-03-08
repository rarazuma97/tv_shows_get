import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_shows/base/utils/namespaces/app_colors.dart';
import 'package:tv_shows/base/utils/namespaces/app_styles.dart';
import 'package:tv_shows/features/settings/presentation/view_models/settings_view_model.dart';

class SettingsScreen extends Screen<SettingsScreenViewModel> {
  SettingsScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx((user) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title:Text(
          'Impostazioni',
          style: AppStyles.textStyleLargeBold.copyWith(
            color: Colors.white),
          ),
      ),
      backgroundColor: AppColors.primary,
      body: const SingleChildScrollView(
        child: Column(
          children: [
          ],
        ),
      ),
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
