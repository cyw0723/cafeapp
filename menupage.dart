import 'package:flutter/material.dart';
import './starpage.dart';
import './cafeitem.dart';

class MenuApp extends StatelessWidget{
  final List<mega>? list;

  MenuApp({Key? key, required this.list}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Container(
        child: Center(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
              childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1 의 비율
              mainAxisSpacing: 10, //수평 Padding
              crossAxisSpacing: 10, //수직 Padding
            ),
            itemBuilder: (BuildContext context,int index){
              return GestureDetector(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        list!.elementAt(index).imagePath!,
                        width: 200, height: 200,
                        fit: BoxFit.fill,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            list!.elementAt(index).MenuName!,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StarApp()),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}