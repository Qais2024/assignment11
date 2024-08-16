import 'package:flutter/material.dart';
import 'package:exam12/main.dart';
class splash extends StatefulWidget {
  @override
  State<splash> createState() => _firstpage1State();
}
class _firstpage1State extends State<splash> {
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds:3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Myapp(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
            children:[
              Image.asset("photo/gptphoto.jpg",fit: BoxFit.fill,height: double.infinity,),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70,),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 700, 0, 0),
                      child: Text("V 0.01",style: TextStyle(fontSize: 15,color: Colors.black),),
                    ),
                  ],
                ),
              ),
            ]
        )
    );
  }
}