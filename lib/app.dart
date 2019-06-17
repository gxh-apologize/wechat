import 'package:flutter/material.dart';

enum ItemType{
  GroupChat,
  AddFriends,
  QrCode,
  Payments,
  Help
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainState();
  }
}

class MainState extends State<App> {
  int currentIndex = 0;

  MessagePagee messagePage;

  void onTapHandler(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  //切换页面
  void currentPage() {
    switch (currentIndex) {
      case 0:
        if(messagePage==null){
          messagePage=new MessagePagee();
        }
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //修改选中的颜色
          fixedColor: Colors.black,
          //选中的索引
          currentIndex: currentIndex,
          onTap: onTapHandler,
          items: [
            BottomNavigationBarItem(
                icon: currentIndex == 0
                    ? Image.asset(
                        'images/weixin_pressed.png',
                        width: 32.0,
                        height: 28.0,
                      )
                    : Image.asset('images/weixin_normal.png',
                        width: 32.0, height: 28.0),
                title: Text(
                  '微信',
                  style: TextStyle(
                      color: currentIndex == 0
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                )),
            BottomNavigationBarItem(
                icon: currentIndex == 1
                    ? Image.asset(
                        'images/contact_list_pressed.png',
                        width: 32.0,
                        height: 28.0,
                      )
                    : Image.asset('images/contact_list_normal.png',
                        width: 32.0, height: 28.0),
                title: Text(
                  '通讯录',
                  style: TextStyle(
                      color: currentIndex == 1
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                )),
            BottomNavigationBarItem(
                icon: currentIndex == 2
                    ? Image.asset(
                        'images/find_pressed.png',
                        width: 32.0,
                        height: 28.0,
                      )
                    : Image.asset('images/find_normal.png',
                        width: 32.0, height: 28.0),
                title: Text(
                  '发现',
                  style: TextStyle(
                      color: currentIndex == 2
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                )),
            BottomNavigationBarItem(
                icon: currentIndex == 3
                    ? Image.asset(
                        'images/profile_pressed.png',
                        width: 32.0,
                        height: 28.0,
                      )
                    : Image.asset('images/profile_normal.png',
                        width: 32.0, height: 28.0),
                title: Text(
                  '我的',
                  style: TextStyle(
                      color: currentIndex == 3
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                )),
          ]),
    );
  }
}
