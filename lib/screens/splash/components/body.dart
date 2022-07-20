import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/size_config.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Jennifer Kingsley exploring the\nnew range of winter fashion wear",
      "image": "assets/images/ayo-ogunseinde-469621-unsplash.png"
     
    },
    {
      "text":
          "Christain Lobi showing us his new \nsummer beach wears",
      "image": "assets/images/caique-silva-537839-unsplash.png"
    },
    {
      "text": "Jimmy Chuka exploring new spring \nsweater collection",
      "image": "assets/images/ap-x-90-395045-unsplash.png"
    },
  
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children:[ 
              Container(
                height: 800,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              
             
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Column(
                      children: <Widget>[
                        
                     Spacer(),
                     Spacer(flex: 13),
                        DefaultButton(
                          text: "Shop Now",
                          press: () {
                            Navigator.pushNamed(context, SignInScreen.routeName);
                          },
                        ),
                       
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                         Spacer(),
                       
                      ],
                    ),
                  ),
                ),
              
            ],
          ),
        ),
      
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
