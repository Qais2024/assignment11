import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const shareapp());
}

class shareapp extends StatelessWidget {
  const shareapp({super.key});

  get share => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              onSelected: (value){
                if(value=="share"){
                  share.share("https://pub.dev/packages/share_plus/install");
                }
              },
              itemBuilder:(BuildContext context){
                return [PopupMenuItem(
                  value: "share",
                  child: Text("share app"),
                ),
                ];
              }
          ),
        ],
      ),
      body: Center(
        child: Text("press the menu buttom"),
      ),
    );
  }
}
