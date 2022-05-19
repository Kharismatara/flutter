import 'package:flutter/material.dart';
import 'package:project_akhir/models/space.dart';
import 'package:project_akhir/pages/detail_page.dart';
import 'package:project_akhir/theme.dart';

class SpaceCard extends StatelessWidget {
  
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //pada saat di tap akan dinavigasikan ke halaman detail
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              //menggukan strack karena disitu yang poluler saja
              child: Stack(
                children: [
                  Image.asset(
                    space.imageUrl!,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpuleColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                          )),
                      child: Center(
                        child: Row(
                          //agar bintangnya ada ditengah 
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                            Text(
                              '${space.rating}/5',
                              style: WhiteTextStyle.copyWith(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name!,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Text.rich(
                TextSpan(
                  text: 'Rp. ${space.pricee}',
                  style: purpleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: ' /bulan',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: greyTextStyle.copyWith(
                  //sebenarnya bisa tidak mengguna fontsize karena defaulnya
                  //14
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
