import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ 
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  image!),
              fit: BoxFit.cover,
            ),
          ),),
        Positioned(
          top: 300,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           
            Row(
              
              children: [
                Text(
                  "No",
                  style: TextStyle(
                    fontSize: 25 ,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
              "1",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
              ],
            ),
            Text('Featured', style: TextStyle(color: Color(0xffFE2550), fontSize: 25, fontWeight: FontWeight.bold),),
            Text('Tailored', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
              
            Text(
              text!,
              style: TextStyle(color: Colors.white,  fontSize: 20),
             
            ),
           
           
          ],
              ),
        ),
        
        
        ]
    );
  }
}
