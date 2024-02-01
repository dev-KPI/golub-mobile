import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ui_kit/ui.dart';

class AppBottomNavigationBarItemWidget extends StatelessWidget {
  final String image;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const AppBottomNavigationBarItemWidget(
      {required this.image,
      this.label = '',
      required this.isActive,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: AppSizes.bottomNavigationBarItemContainerSize,
        height: AppSizes.bottomNavigationBarItemContainerSize,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: isActive
                  ? AppSizes.bottomNavigationBarActiveItemSize
                  : AppSizes.bottomNavigationBarItemSize,
              height: isActive
                  ? AppSizes.bottomNavigationBarActiveItemSize
                  : AppSizes.bottomNavigationBarItemSize,
              child: SvgPicture.asset(
                image,
                colorFilter: const ColorFilter.mode(
                    // isActive ?
                    // Theme.of(context)
                    //   .bottomNavigationBarTheme
                    //   .selectedItemColor! :
                    // Theme.of(context)
                    //   .bottomNavigationBarTheme
                    //   .unselectedItemColor!,
                    Colors.white,
                    BlendMode.srcIn),
                fit: BoxFit.cover,
                placeholderBuilder: (BuildContext context) => Container(
                  width: AppSizes.bottomNavigationBarItemSize,
                  height: AppSizes.bottomNavigationBarItemSize,
                  decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                ),
              ),
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 250),
              // style: isActive ?
              // Theme.of(context)
              //   .bottomNavigationBarTheme
              //   .selectedLabelStyle! :
              // Theme.of(context)
              //   .bottomNavigationBarTheme
              //   .unselectedLabelStyle!,
              style:
                  const TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600),
              child: Text(
                label,
                style: const TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w500,
                ),
                // style: TextStyle(
                //   fontFamily: 'Ubuntu',
                // ),
                //   style: TextStyle(
                //     fontFamily: 'Roboto',
                //   )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
