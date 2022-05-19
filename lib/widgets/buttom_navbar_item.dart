import 'package:flutter/material.dart';
import 'package:project_akhir/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String? imageUrl;
  final bool? isActive;

  BottomNavbarItem({this.imageUrl, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl!,
          width: 26,
        ),
        Spacer(),
        
        if (isActive ! == null) Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: purpuleColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(1000),
              ),
              ),
        ) else Container(), 
      ],
    );
  }
}
