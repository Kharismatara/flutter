import 'package:flutter/material.dart';
import 'package:project_akhir/home_pages.dart';
import 'package:project_akhir/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: whiteleColor,
      body: SafeArea( 

        child:Stack(
          children: [
            //membuat gamabr kebabawah 
            Align(alignment: Alignment.bottomCenter,
              child: Image.asset('assets/splash_image.png'),
              ),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 50,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage('assets/logo1.png'), 
                    ),
                ),
              ),
              SizedBox(height: 30,
               ),
               Text('Find Boarding House\nto Stay and Happy', 
               style: blackTextStyle.copyWith(
                 fontSize: 24,
               ),
               ),
              SizedBox(
                height: 10,
              ),
              Text('Stop membuang banyak waktu\npada tempat yang tidak habbitable', 
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              ),
              SizedBox( height: 40,
              ),
              //membuat button 
              Container(
                width:210 ,
                height: 50,
                child: RaisedButton(
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
                  } ,
                color: purpuleColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)
                ),
                child: Text('Explore Now',
                style: WhiteTextStyle.copyWith(
                  fontSize: 18,
                ),
                ),
            
            )
              ),
              ],
                  ),
            ),
          ],
        ) 
    ),
    );
  }
}


