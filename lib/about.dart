import 'package:flutter/material.dart';
class about1 extends StatelessWidget {
  const about1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Divider(height: 2,color: Colors.red,),
            Image.asset("photo/qais.jpg"),
            Divider(height: 5,color: Colors.red,),
            Text(
              "",style: TextStyle(fontSize: 50,color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
