import 'package:flutter/material.dart';
import 'package:project_akhir/models/space.dart';
import 'package:project_akhir/models/tips.dart';
import 'package:project_akhir/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.ImageUrl!,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          //rata kiri
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title!,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updated}',
             style: greyTextStyle),
          ],
        ),
        //menjadikan di pojok kanan
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            //defaut 24
            size: 24,
            color: greyleColor,
          ),
        ),
      ],
    );
  }
}
