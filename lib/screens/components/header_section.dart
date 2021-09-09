import 'package:badges/badges.dart';
import 'package:challenge_5/screens/constants.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Furnitures",
          style: TextStyle(
            fontSize: 23,
            fontFamily: appFont,
            color: Colors.black,
          ),
        ),
        Badge(
          badgeColor: Colors.blue,
          badgeContent: Text(
            "2",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: appFont,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              size: 28.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
