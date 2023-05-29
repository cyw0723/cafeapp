import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("즐겨찾기"),),
      body: Container(child: Text("즐겨찾기 페이지로 이동 완료"),),
    );
  }
}