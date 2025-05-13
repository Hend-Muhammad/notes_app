import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  CustomSearchIcon({
    super.key,
    required this.icon
  });
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withValues(alpha: 0.10),
        ),
        child:  Icon(icon, size: 28,),
      ),
    );
  }
}