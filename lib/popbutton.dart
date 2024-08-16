import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:exam12/about.dart';

class popbutton extends StatefulWidget {
  const popbutton({super.key});

  @override
  State<popbutton> createState() => _popbuttonState();
}

class _popbuttonState extends State<popbutton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
        icon: Icon(Icons.more_vert),
        onSelected: (value){
          switch (value){
            case 1:
              shareappp(context);
              break;
            case 2:
              about(context);
              break;
            case 3:
              exit(context);

          }
        },
        itemBuilder: (BuildContext context) =>
        <PopupMenuItem<int>>[
          PopupMenuItem<int>(
            value: 1,
            child: Row(
              children: [
                Icon(Icons.share, color: Colors.blue,),
                Text("Share app"),
                SizedBox(height: 10,)
              ],
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Row(
              children: [
                Icon(Icons.account_box),
                GestureDetector(onTap:(){    Navigator.push(context, MaterialPageRoute(builder: (context) => about1(),));},child:  Text("About")),
                SizedBox(height: 10,),
              ],
            ),
          ),
          PopupMenuItem(
            value: 3,
            child: Row(
              children: [
                Icon(Icons.exit_to_app),
                GestureDetector(onTap:(){SystemNavigator.pop();},child:  Text("Exit")),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ]
    );
  }
}

void shareappp(BuildContext context){
  final RenderBox box=context.findRenderObject() as RenderBox;
  Share.share("https://pub.dev/packages/share_plus",sharePositionOrigin: box.localToGlobal(Offset.zero)&box.size);
}
void about(BuildContext context){
  GestureDetector(onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => about1(),));
  },child: Text(""),);
}
void exit(BuildContext context){
}