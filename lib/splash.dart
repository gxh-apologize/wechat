import 'package:flutter/material.dart';
import 'dart:async';

// 启动页
class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new loadingState();
  }
}

class loadingState extends State<SplashPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    new Future.delayed(const Duration(seconds:3),(){
      print("启动页加载完毕");
      Navigator.of(context).pushReplacementNamed("app");

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: Image.asset("images/loading.jpg"),
    );
  }
}
