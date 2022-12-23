import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String name;
  final String image;
  final bool checked;

  const CityCard(
      {super.key,
      required this.name,
      required this.image,
      required this.checked});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.blue,
      child: Container(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            InkWell(
              onTap: () {
                print('Tap on $name');
              },
              child: Ink.image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(
                          Icons.star_border,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        name,
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
