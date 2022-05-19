import 'package:flutter/material.dart';
import 'package:project_akhir/models/city.dart';
import 'package:project_akhir/models/space.dart';
import 'package:project_akhir/models/tips.dart';
import 'package:project_akhir/theme.dart';
import 'package:project_akhir/widgets/buttom_navbar_item.dart';
import 'package:project_akhir/widgets/city_card.dart';
import 'package:project_akhir/widgets/spance_card.dart';
import 'package:project_akhir/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: whiteleColor,
      body: SafeArea(
        bottom: false,
        //listView digunakan untuk sroling 
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            //NOTE : TITLE/HEAEDER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Explore Now', style: blackTextStyle.copyWith(
                fontSize: 24,
              ),),
            ),
            SizedBox(
              height: 2, 
            ),
            Padding(padding: EdgeInsets.only( left: edge),
            child: Text(
              'Mencari kosan dengan mudah', 
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            ),
            SizedBox( height: 30,
            ),
            //NOTE : POPULER CITY
             Padding(padding: EdgeInsets.only( left: edge),
            child: Text(
              'Popular', 
              style: regularTextStyle .copyWith(
                fontSize: 16,
              ),
            ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                    SizedBox( width: 24,
                    ),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/city1.png',

                    )
                  ),
                  SizedBox( width: 20,
                  ),
                  CityCard(
                     City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/city2.png',
                     

                    )
                  ),
                    SizedBox( width: 20,
                    ),
                  CityCard(
                     City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/city3.png',

                    )
                  ),
                   SizedBox( width: 20,
                  ),
                  CityCard(
                     City(
                      id: 3,
                      name: 'Bogor',
                      imageUrl: 'assets/city4.png',
                    )
                  ),
                   SizedBox( width: 20,
                  ),
                   CityCard(
                     City(
                      id: 3,
                      name: 'Malang',
                      imageUrl: 'assets/city5.png',
                    )
                  ),
                  SizedBox( width: 20,
                  ),
                   CityCard(
                     City(
                      id: 3,
                      name: 'Banyuwangi',
                      imageUrl: 'assets/city6.png',
                    )
                  ),
                  SizedBox( width: 24,
                    ),
                ],
              )
            ),
            SizedBox(
              height: 30,
            ),
            //NOTE : RECOMENED SPACE 
            Padding(padding: EdgeInsets.only( left: edge),
            child: Text(
              'Recomended Space', 
              style: regularTextStyle .copyWith(
                fontSize: 16,
              ),
            ),
            ),
            //size box adalah jarak diantara atas dan bawah
            SizedBox(
              height: 16,
            ),
            Padding(
              //untuk kanan dan kiri kita pakai simetrik 
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                    id: 1,
                    name: 'Griya Asih',
                    imageUrl: 'assets/space4.png',
                    pricee:300000,
                    city: 'Banyuwangi',
                    country: 'Jawa Timur',
                    rating: 4,
            
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                       id: 2,
                    name: 'Rumah Nenek',
                    imageUrl: 'assets/space2.png',
                    pricee: 450000,
                    city: 'Malang',
                    country: 'Jawa Timur',
                    rating: 5,
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                       id: 3,
                    name: 'Pondok Indah',
                    imageUrl: 'assets/space3.png',
                    pricee: 2000000,
                    city: 'Jakarta',
                    country: 'Indonesia',
                    rating: 3,
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                       id: 4,
                    name: 'Griya Airlangga',
                    imageUrl: 'assets/space1.png',
                    pricee: 600000,
                    city: 'Bandung',
                    country: 'Jawa Barat',
                    rating: 5,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
               
                ],
            
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //NOOTE : TIPS DAN GUIDANCE 
            Padding(padding: EdgeInsets.only( left: edge),
            child: Text(
              'Tips & Guidance', 
              style: regularTextStyle .copyWith(
                fontSize: 16,
              ),
            ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge
              ),
              child: Column(
                children: [
                  TipsCard(
                   Tips(
                     id: 1,
                     title: 'City GuideLines',
                     ImageUrl: 'assets/tips1.png',
                     updated: '5 Desember',
                   ), 
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   TipsCard(
                     Tips(
                     id: 2,
                     title: 'Jakarta',
                     ImageUrl: 'assets/tips2.png',
                     updated: '15 Januari',
                     ),
                   ),
                ],
              ),
            ),
            SizedBox(
              height: 50 + edge,
            ),
           
           ],
        )
        ),
        floatingActionButton:  Container(
                height: 65,
                width: MediaQuery.of(context).size.width  - (2 * edge),
                margin: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffF6F7F8),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Row(
                  //biar ada space 
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_home.png',
                      isActive: true,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_email.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_card.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_love.png',
                      isActive: false,
                    ),
                  ],
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
