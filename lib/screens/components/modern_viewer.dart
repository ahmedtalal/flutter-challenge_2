import 'package:challenge_5/screens/constants.dart';
import 'package:flutter/material.dart';

class MordernViewer extends StatelessWidget {
  const MordernViewer({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.39,
      width: size.width * 0.43,
      margin: const EdgeInsets.only(
        right: 12,
        top: 8,
        bottom: 8,
      ),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
              color: darkColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.15,
              width: size.width * 0.33,
              margin: const EdgeInsets.only(left: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.3,
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Landscape",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: appFont,
                    ),
                  ),
                  Text(
                    "Matter made",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: appFont,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "384 USD",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: appFont,
                      color: containerColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 33,
              width: 40,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.only(bottom: 13),
              child: Icon(
                Icons.arrow_forward,
                size: 22,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
