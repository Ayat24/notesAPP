import 'package:flutter/material.dart';

import 'costum_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
