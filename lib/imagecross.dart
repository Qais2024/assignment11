import 'package:flutter/material.dart';

class imagecross extends StatelessWidget {
  const imagecross({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class images extends StatelessWidget {
  final List<dynamic> imageurl = [
    "photo/lotte.jpg",
    "photo/lotte.jpg",
    "photo/lotte.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 200,
          child: PageView.builder(
            itemCount: imageurl.length,
            itemBuilder: (context, index) {
              return Image.asset(
                imageurl[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ],
      ),
    );
  }
}
