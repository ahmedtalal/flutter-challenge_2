import 'package:challenge_5/data.dart';
import 'package:challenge_5/screens/components/popular_viewer.dart';
import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Popular .",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "In recent month",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              images.length,
              (index) {
                return PopularViewer(
                  size: size,
                  image: images[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
