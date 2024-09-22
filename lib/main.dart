import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second/widget/rounden_btn.dart';
void main(){
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterApp',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(),

      body:SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 130,bottom: 120),
            child: Row(// Align items at the bottom
              children: [
                

                Text(
                  'D',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700, color: Colors.green),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min, // Minimize the column size
                  children: [
                    Text(
                      'riven',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black87),
                    ),
                    Container(
                      height: 3,
                      width: 70,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          )

      ),

      );
  }
}


