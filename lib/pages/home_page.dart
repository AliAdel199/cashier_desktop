

import '../widget/button_home.dart';
import 'package:flutter/material.dart';

import '../my_constatnt.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: textColor,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 12,
          title: const Text("Cashier App"),
        ),

        body: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("images/3699397.jpg",width: 300,),


              MyButton(onTap: (){},
                title: "أضافة مادة",width: width*0.65,height: height  * 0.11,alignment: "r",
              ),
              MyButton(onTap: (){},
                title: "فاتورة جديدة",width: width*0.65,height: height  * 0.11,alignment: "l",
              ),
              MyButton(onTap: (){},
                title: "قائمة المواد",width: width*0.65,height: height  * 0.11,alignment: "r",
              ),
              MyButton(onTap: (){},
                title: "قائمة الاصناف",width: width*0.65,height: height  * 0.11,alignment: "l",
              ),
            ],
          ),
        ));
  }
}
