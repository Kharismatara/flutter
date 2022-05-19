import 'package:flutter/material.dart';
import 'package:project_akhir/theme.dart';

class FacilitesItem extends StatelessWidget {
  //membuat parameter agar tidak 1 dapur saja
  final String? name;
  final String? ImageUrl;
  final int? total;

  FacilitesItem({this.ImageUrl, this.name, this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      //rata kiri
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          ImageUrl!,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleTextStyle.copyWith(
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: '$name',
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
