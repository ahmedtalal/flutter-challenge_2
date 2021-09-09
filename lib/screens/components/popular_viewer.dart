import 'package:challenge_5/screens/constants.dart';
import 'package:flutter/material.dart';

class PopularViewer extends StatelessWidget {
  const PopularViewer({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: size.width,
      margin: const EdgeInsets.only(
        right: 12,
        top: 8,
        bottom: 8,
      ),
      child: Stack(
        children: [
          Container(
            width: size.width * 0.85,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                )
              ],
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ariel Pendant",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: appFont,
                        ),
                      ),
                      Text(
                        "Our lighting collection is sure to add the desired style to",
                        style: TextStyle(
                          fontSize: 14,
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
              ],
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
