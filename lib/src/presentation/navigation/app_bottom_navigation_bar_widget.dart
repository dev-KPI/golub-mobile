import 'package:flutter/material.dart';
import 'package:golub/i18n/strings.g.dart';
import 'package:golub/src/presentation/navigation/app_bottom_navigation_bar_item_widget.dart';
import 'package:golub/src/presentation/ui_kit/ui.dart';

class AppBottomNavigationBarWidget extends StatefulWidget {
  final int index;
  final Function(int) onTap;

  const AppBottomNavigationBarWidget({required this.index, required this.onTap, super.key});

  @override
  State<AppBottomNavigationBarWidget> createState() => _AppBottomNavigationBarWidgetState();
}

class _AppBottomNavigationBarWidgetState extends State<AppBottomNavigationBarWidget> {
  final List<({String icon, String label})> _bottomNavigationBarItem = [
    (icon: AppAssets.contactIcon, label: t.screens.auth.title),
    (icon: AppAssets.chatIcon, label: 'Chats'),
    (icon: AppAssets.profileIcon, label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      constraints: BoxConstraints(
        minHeight: AppSizes.bottomNavigationBarHeight,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: _bottomNavigationBarItem
            .asMap()
            .entries
            .map(
              (e) => AppBottomNavigationBarItemWidget(
                image: e.value.icon,
                label: e.value.label,
                isActive: e.key == widget.index,
                onTap: () => widget.onTap(e.key),
              ),
            )
            .toList(),
      ),
    );
  }
}
