import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_assets.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';

class ProfileUploadImage extends StatelessWidget {
  final EdgeInsets padding;

  const ProfileUploadImage({
    this.padding = const EdgeInsets.all(16.0),
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 144.0,
            height: 144.0,
            decoration: BoxDecoration(
              color: AppColors.baseGray2,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Center(
              child: SvgPicture.asset(
                AppAssets.userProfileIcon,
                fit: BoxFit.cover,
                width: 76.0,
                height: 84.0,
              ),
            ),
          ),
          Positioned(
            bottom: -16.0,
            child: Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: AppColors.baseWhite,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.cameraIcon,
                  fit: BoxFit.cover,
                  width: 16.0,
                  height: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
