import 'package:flutter/material.dart';
import './app.dart';
import './splash.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title:'wechat',
  theme: mDefaultTheme,
  routes: <String,WidgetBuilder>{
   "app":(BuildContext context)=>new App(),
  },

  home: new SplashPage(),
));


final ThemeData mDefaultTheme=new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Color(0xff393a3f)
);
