import 'package:flutter/material.dart';
import 'package:exam12/mainpage.dart';
import 'package:exam12/popbutton.dart';
import 'package:exam12/splash.dart';
void main() {
  runApp(MaterialApp(home: splash(),debugShowCheckedModeBanner: false,));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List<Map> item = [
    //khlifa
    {"text": "Khalifa", "lading": Image.asset("photo/khalifa.jpg", height: 30,), "info": abc(image1: "photo/khalifa.jpg", image2: "photo/khalifa2.jpg", image3: "photo/khalifa3.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """-موقعیت: دبی، امارات متحده عربی
- ارتفاع: 828 متر
- تعداد طبقات: 163
- تعداد اتاق: حدود 900 اتاق
- مدت زمان ساخت: ساخت این برج از سال 2004 آغاز و در سال 2010 به پایان رسید. 
- معمار: آدریان اسمیت (Adrian Smith) از شرکت اسکیس (Skidmore, Owings & Merrill).
- هزینه ساخت: حدود 1.5 میلیارد دلار.
- مالک: شرکت اعمار (Emaar Properties).
- درآمد سالانه: تخمین زده می‌شود که درآمد سالانه این برج حدود 2 میلیارد دلار باشد.
""",
      text2: '',)},
    //Shanghai
    {"text": "Shanghai Tower", "lading": Image.asset("photo/shanghai.jpg", height: 30,), "info": abc(image1: "photo/shanghai.jpg", image2: "photo/shanghai2.jpg", image3: "photo/shanghai3.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """- موقعیت: شانگهای، چین
- ارتفاع: 632 متر
- تعداد طبقات: 128
- تعداد اتاق: حدود 380 اتاق.
- مدت زمان ساخت: از سال 2008 تا 2015.
- معمار: گیلز بویس (Gensler).
- هزینه ساخت: حدود 2.4 میلیارد دلار.
- مالک: شرکت شانگهای لند (Shanghai Tower Construction & Development).
- درآمد سالانه: حدود 1.2 میلیارد دلار.
""",
      text2: '',)},
    //macca
    {"text": "Abraj Al Bait Clock Tower", "lading": Image.asset("photo/maka.jpg", height: 30,), "info": abc(image1: "photo/maka.jpg", image2: "photo/maka2.jpg", image3: "photo/maka3.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """- موقعیت: مکه، عربستان سعودی
- ارتفاع: 601 متر
- تعداد طبقات: 120
- تعداد اتاق: تقریباً 1,500 اتاق.
- مدت زمان ساخت: از سال 2004 تا 2012.
- معمار: دار الهندسه (Dar Al-Handasah).
- هزینه ساخت: حدود 15 میلیارد دلار.
- مالک: دولت عربستان سعودی.
- درآمد سالانه: تخمین زده می‌شود که درآمد سالانه این برج حدود 1.5 میلیارد دلار باشد.""",
      text2: '',)},
    //Ping An Finance Center
    {"text": "Ping An Finance Center", "lading": Image.asset("photo/ping center.jpg", height: 30,), "info": abc(image1: "photo/ping center.jpg", image2: "photo/ping center2.jpg", image3: "photo/ping center3.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """- موقعیت: شنزن، چین
- ارتفاع: 599 متر
- تعداد طبقات: 115
- تعداد اتاق: حدود 400 اتاق.
- مدت زمان ساخت: از سال 2010 تا 2017.
- معمار:KPF (Kohn Pedersen Fox).
- هزینه ساخت: حدود 1.5 میلیارد دلار.
- مالک: شرکت پینگ ان (Ping An Insurance).
- درآمد سالانه: حدود 1 میلیارد دلار.""",
      text2: '',)},
    //Lotte World Tower
    {"text": "Lotte World Tower", "lading": Image.asset("photo/lotte.jpg", height: 30,), "info": abc(image1: "photo/lotte.jpg", image2: "photo/lotte2.jpg", image3: "photo/lotte3.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """- موقعیت: سئول، کره جنوبی
- ارتفاع: 555 متر
- تعداد طبقات: 123
- تعداد اتاق: حدود 500 اتاق.
- مدت زمان ساخت: از سال 2009 تا 2016.
- معمار: Kohn Pedersen Fox.
- هزینه ساخت: حدود 3.1 میلیارد دلار.
- مالک: گروه لوتی (Lotte Group).
- درآمد سالانه: تخمین زده می‌شود که درآمد سالانه این برج حدود 800 میلیون دلار باشد.
""",
      text2: '',)},
    //One World Trade Center
    {"text": "One World Trade Center", "lading": Image.asset("photo/one world.jpg", height: 30,), "info": abc(image1: "photo/one world.jpg", image2: "photo/one world2.jpg", image3: "photo/one world3.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """- موقعیت: نیویورک، ایالات متحده آمریکا
- ارتفاع: 541 متر
- تعداد طبقات: 104
- تعداد اتاق: حدود 300 اتاق.
- مدت زمان ساخت: از سال 2006 تا 2013.
- معمار: دیوید چایلدز (David Childs).
- هزینه ساخت: حدود 3.9 میلیارد دلار.
- مالک:Port Authority of New York and New Jersey.
- درآمد سالانه: تخمین زده می‌شود که درآمد سالانه این برج حدود 600 میلیون دلار باشد.""",
      text2: '',)},
    //Guangzhou CTF Finance Centre
    {"text": "Guangzhou CTF Finance Centre", "lading": Image.asset("photo/cft.jpg", height: 30,), "info": abc(image1: "photo/cft.jpg", image2: "photo/cft.jpg", image3: "photo/cft.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """- موقعیت: گوانگژو، چین
- ارتفاع: 530 متر
- تعداد طبقات: 111
- تعداد اتاق: حدود 300 اتاق.
- مدت زمان ساخت: از سال 2010 تا 2016.
- معمار: KPF (Kohn Pedersen Fox).
- هزینه ساخت: حدود 2.4 میلیارد دلار.
- مالک: شرکت CTF (China Time-honored Brand Group).
- درآمد سالانه: تخمین زده می‌شود که درآمد سالانه این برج حدود 700 میلیون دلار باشد.
""",
      text2: '',)},
    //Tianjin CTF Finance Centre
    {"text": "Tianjin CTF Finance Centre", "lading": Image.asset("photo/tianjin.jpg", height: 30,), "info": abc(image1: "photo/tianjin.jpg", image2: "photo/tianjin2.jpg", image3: "photo/tianjin3.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """- موقعیت: تیانجین، چین
- ارتفاع: 530 متر
- تعداد طبقات: 98
- تعداد اتاق: حدود 300 اتاق.
- مدت زمان ساخت: از سال 2010 تا 2019.
- معمار: KPF (Kohn Pedersen Fox).
- هزینه ساخت: حدود 1.5 میلیارد دلار.
- مالک: CTF (China Time-honored Brand Group).
- درآمد سالانه: تخمین زده می‌شود که درآمد سالانه این برج حدود 600 میلیون دلار باشد.""",
      text2: '',)},
    //Changsha IFS Tower T1
    {"text": "Changsha IFS Tower T1", "lading": Image.asset("photo/ifs.jpg", height: 30,), "info": abc(image1: "photo/ifs.jpg", image2: "photo/ifs2.jpg", image3: "photo/ifs3.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """- موقعیت: چانگشا، چین
- ارتفاع: 452 متر
- تعداد طبقات: 88
- تعداد اتاق: حدود 400 اتاق.
- مدت زمان ساخت: از سال 2010 تا 2017.
- معمار: KPF (Kohn Pedersen Fox).
- هزینه ساخت: حدود 1.5 میلیارد دلار.
- مالک: گروه IFS (Hunan IFS).
- درآمد سالانه: تخمین زده می‌شود که درآمد سالانه این برج حدود 500 میلیون دلار باشد.
""",
      text2: '',)},
    //Petronas Towers
    {"text": "Petronas Towers", "lading": Image.asset("photo/petronas.jpg", height: 30,), "info": abc(image1: "photo/petronas.jpg", image2: "photo/petronas2.jpg", image3: "photo/petronas3.jpg", url: 'https://pub.dev/packages/share_plus',
      text1: """- موقعیت: کوالالامپور، مالزی
- ارتفاع: 452 متر 
- تعداد طبقات: 88 
- تعداد اتاق: حدود 300 اتاق 
- مدت زمان ساخت: از سال 1993 تا 1998 
- معمار: سیریوهاس (Cesar Pelli) 
- هزینه ساخت: حدود 1.6 میلیارد دلار 
- مالک: شرکت پتروماس (P""",
      text2: '',)},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Top Ten Tower",style: TextStyle(fontSize: 25,color: Colors.white),),
          actions: [
            popbutton()
          ],

        ),
        body: Column(
          children: [
            Container(
              height: 250,
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                    Image.asset("photo/khalifa.jpg",height: 250,),
                    Image.asset("photo/tianjin.jpg",height: 250,),
                    Image.asset("photo/shanghai.jpg",height: 250,),
                    Image.asset("photo/ping center.jpg",height: 250,),
                    Image.asset("photo/maka.jpg",height: 250,),
                    Image.asset("photo/lotte.jpg",height: 250,),
                    Image.asset("photo/ifs.jpg",height: 250,),
                    Image.asset("photo/cft.jpg",height: 250,),
                    Image.asset("photo/citic.jpg",height: 250,),
                    Image.asset("photo/one world.jpg",height: 250,),
                  ],
                ),
              ) ,
            ),
            Expanded(
              child: Center(
                child: ListView.builder(
                  itemCount: item.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => item[index]["info"],));
                        },
                        leading: item[index]["lading"],
                        trailing: Icon(Icons.chevron_right_outlined),
                        title: Text(item[index]["text"]),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
