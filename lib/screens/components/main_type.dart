import 'package:flutter/material.dart';

class MainTypes extends StatelessWidget {
  const MainTypes({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<IconData> items;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          items.length,
          (index) {
            return Container(
              height: 50,
              width: 70,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                right: 10,
                top: 8,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                color: index == 0 ? Colors.blue : Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: Icon(
                items[index],
                size: 18,
                color: index == 0 ? Colors.white : Colors.grey,
              ),
            );
          },
        ),
      ),
    );
  }
}
