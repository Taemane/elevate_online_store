import 'package:elevate_online_store/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const CustomBottomNavBar({
    Key? key,
    required this.index,
    required this.onChangedTab,
  }) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildTabItem(
              index: 0,
              icon: FontAwesomeIcons.house,
            ),
            _buildTabItem(
              index: 1,
              icon: FontAwesomeIcons.solidHeart,
            ),
            _buildTabItem(
              index: 2,
              icon: FontAwesomeIcons.bagShopping,
            ),
            _buildTabItem(
              index: 3,
              icon: FontAwesomeIcons.solidBell,
            ),
            _buildTabItem(
              index: 4,
              icon: FontAwesomeIcons.solidUser,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required int index,
    required IconData icon,
  }) {
    final isSelected = index == widget.index;

    return InkWell(
      onTap: () => widget.onChangedTab(index),
      child: Container(
        decoration: isSelected
            ? BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(50),
              )
            : null,
        padding: const EdgeInsets.all(8),
        child: FaIcon(
          icon,
          color: isSelected ? primaryColor : Colors.black54,
          size: 16,
        ),
      ),
    );
  }
}
