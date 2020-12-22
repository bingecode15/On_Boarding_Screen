import 'package:flutter/material.dart';
import 'package:onboarding_app/constants.dart';
import 'package:onboarding_app/screens/on_boarding/components/content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> onBoardingData = [
    {
      "text": "1°STEP",
      "image": "assets/images/image1.png",
      "title": "Think about your idea",
    },
    {
      "text": "2°STEP",
      "image": "assets/images/image2.png",
      "title": "Share your thoughts",
    },
    {
      "text": "3°STEP",
      "image": "assets/images/image3.png",
      "title": "Realize your project",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: size.height * 0.8,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onBoardingData.length,
              itemBuilder: (context, index) => Content(
                size: size,
                image: onBoardingData[index]["image"],
                text: onBoardingData[index]["text"],
                title: onBoardingData[index]["title"],
              ),
            ),
          ),
          SizedBox(height: size.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onBoardingData.length,
              (index) => Container(
                margin: EdgeInsets.only(right: 15),
                height: 13,
                width: 13,
                decoration: BoxDecoration(
                  color: currentPage == index ? kPrimaryColor : Colors.white,
                  border: Border.all(color: kPrimaryColor),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            "skip",
            style: kDefaultTextStyle.copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
