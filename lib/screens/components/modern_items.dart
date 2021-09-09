import 'package:challenge_5/data.dart';
import 'package:challenge_5/screens/components/modern_viewer.dart';
import 'package:flutter/material.dart';

class ModernItems extends StatelessWidget {
  const ModernItems({
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
              "Modern .",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "Good quanlity item",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              images.length,
              (index) {
                return MordernViewer(
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
