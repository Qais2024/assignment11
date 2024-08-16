import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class abc extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  final String text1;
  final String text2;
  final String url;
  const abc(
      {super.key,
        required this.image1,
        required this.image2,
        required this.image3, required this.url, required this.text1, required this.text2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
          children: [
            Container(
              height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(image1 as String, height: 480,),
                    Image.asset(image2 as String, height: 480,),
                    Image.asset(image3 as String, height: 480,),
                  ],
                ),
              ),
            ),
            Divider(height: 5,color: Colors.black,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                  child: Column(
                    children: [
                      Text(text1,style: TextStyle(fontSize: 20,color: Colors.black,),textDirection: TextDirection.rtl,),
                      Text(text2,style: TextStyle(fontSize: 25,color: Colors.black,),textDirection: TextDirection.rtl,),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text("More Details")),
          ]),
    );
  }
}
