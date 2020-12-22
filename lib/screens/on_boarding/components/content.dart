import 'package:flutter/material.dart';

import '../../../constants.dart';

class Content extends StatelessWidget {
  const Content({
    Key key,
    @required this.size,
    this.text,
    this.image,
    this.title,
  }) : super(key: key);

  final Size size;
  final String text, image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.08, vertical: size.height * 0.015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black54,
              ),
              Text(
                text,
                style: kDefaultTextStyle.copyWith(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Image.asset(
            image,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: size.height * 0.03),
        Text(
          title,
          style: kHeadingTextStyle,
        ),
        Divider(
          thickness: 2.0,
          color: kPrimaryColor,
          endIndent: size.width * 0.4,
          indent: size.width * 0.4,
        ),
        SizedBox(height: size.height * 0.03),
        Text(
          "Try to focus on your project idea,\nthinking about the goal you\nwant to achieve.",
          textAlign: TextAlign.center,
          style: kDefaultTextStyle.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
