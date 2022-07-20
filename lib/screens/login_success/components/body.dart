import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, 
          width: double.infinity,
          fit: BoxFit.cover,//40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: GestureDetector(
            onTap: (){
               Navigator.pushNamed(context, HomeScreen.routeName);
            },
            child: Container(
              child: Center(child: Text("Back to Home",  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),)),
               width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20)
            ),
            ),

          )
         
        ),
        Spacer(),
      ],
    );
  }
}
