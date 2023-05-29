import 'package:flutter/material.dart';
import './homepage.dart';
import './starpage.dart';
import './boardpage.dart';
import './cafeitem.dart';
import './cafepage.dart';
import './menupage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOGO',
      home: CafePage(),
    );
  }
}

class CafePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _CafePage();
  }
}

class _CafePage extends State<CafePage> with SingleTickerProviderStateMixin{
  TabController? controller;
  List<Cafe> CafeList =  new List.empty(growable: true);
  List<mega> MenuList =  new List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('LOGO'),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: TabBarView(
          physics: ScrollPhysics(),
          children: <Widget>[HomeApp(), CafeApp(list:CafeList), StarApp(), BoardApp(), MenuApp(list: MenuList)],
        ),
        bottomNavigationBar: Container(
            child: TabBar(
              tabs: <Tab> [
                Tab(icon: Icon(Icons.home, color: Colors.white),),
                Tab(icon: Icon(Icons.coffee, color: Colors.white),),
                Tab(icon: Icon(Icons.star, color: Colors.white),),
                Tab(icon: Icon(Icons.format_list_bulleted, color: Colors.white),)
              ],
            ),
            color: Colors.brown
        ),
      ),
    );
  }

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 2, vsync: this);
    CafeList.add(Cafe(imagePath: "image/cafe/bluepot.png", CafeName: "블루포트"));
    CafeList.add(Cafe(imagePath: "image/cafe/chai.png", CafeName: "카페 차이"));
    CafeList.add(Cafe(imagePath: "image/cafe/dpurple.png", CafeName: "디 퍼플"));
    CafeList.add(Cafe(imagePath: "image/cafe/dream.png", CafeName: "카페 드림"));
    CafeList.add(Cafe(imagePath: "image/cafe/gongcha.png", CafeName: "공차"));
    CafeList.add(Cafe(imagePath: "image/cafe/gravity.png", CafeName: "그래비티"));
    CafeList.add(Cafe(imagePath: "image/cafe/mega.png", CafeName: "메가커피"));
    CafeList.add(Cafe(imagePath: "image/cafe/paik's.png", CafeName: "빽다방"));
    CafeList.add(Cafe(imagePath: "image/cafe/pandorothy.png", CafeName: "팬 도로시"));
    CafeList.add(Cafe(imagePath: "image/cafe/sapiens.png", CafeName: "커피 사피엔스"));

    MenuList.add(mega(imagePath: "image/menu/mega/americano.jpg", MenuName: "아메리카노"));
    MenuList.add(mega(imagePath: "image/menu/mega/banila.jpg", MenuName: "바닐라라뗴"));
    MenuList.add(mega(imagePath: "image/menu/mega/sweetpotato.jpg", MenuName: "고구마라떼"));
    MenuList.add(mega(imagePath: "image/menu/mega/greentea.jpg", MenuName: "녹차라떼"));
    MenuList.add(mega(imagePath: "image/menu/mega/caramel.jpg", MenuName: "카라멜마끼아또"));
    MenuList.add(mega(imagePath: "image/menu/mega/cafelatte.jpg", MenuName: "카페라떼"));
    MenuList.add(mega(imagePath: "image/menu/mega/cafemoca.jpg", MenuName: "카페모카"));
    MenuList.add(mega(imagePath: "image/menu/mega/cookie.jpg", MenuName: "쿠키프라페"));
    MenuList.add(mega(imagePath: "image/menu/mega/hotchoco.jpg", MenuName: "핫초코"));
    MenuList.add(mega(imagePath: "image/menu/mega/hazelnut.jpg", MenuName: "헤이즐넛라떼"));

  }


}