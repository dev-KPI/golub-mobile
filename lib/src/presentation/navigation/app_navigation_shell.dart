import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:golub/src/presentation/navigation/app_bottom_navigation_bar_widget.dart';

/// StatefulNavigationShell is a wrapper for the GoRouter's StatefulShellRoute
class AppNavigationShell extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const AppNavigationShell({required this.navigationShell, super.key});

  @override
  State<AppNavigationShell> createState() => _AppNavigationShellState();
}

class _AppNavigationShellState extends State<AppNavigationShell> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: widget.navigationShell
          ),
          AppBottomNavigationBarWidget(
            index: widget.navigationShell.currentIndex,
            onTap: (int tappedIndex) =>
              widget.navigationShell.goBranch(
                tappedIndex,
                initialLocation: widget.navigationShell.currentIndex == tappedIndex
              ),
          ),
        ],
      ),
    );
  }
}
