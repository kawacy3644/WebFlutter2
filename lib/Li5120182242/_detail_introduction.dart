import 'package:flutter/material.dart';
import 'package:flutter_app/Li5120182242/_news_page.dart';
import 'package:flutter_app/Li5120182242/_person_information.dart';
import 'package:flutter_app/Li5120182242/_detail_news.dart';

class detailIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Detail Introduction',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: _introduction(),
    );
  }
}

class _introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('程序说明'),
        leading: IconButton(
          icon: Icon(Icons.backspace),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>news_page()));
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10.0,10.0,0,0),
        margin: const EdgeInsets.all(10.0),
//        decoration: new BoxDecoration(
////          color: Colors.lightBlue,
//          borderRadius: BorderRadius.all(Radius.circular(4.0)),
////          border: new Border.all(width: 1, color: Colors.orange),
//        ),
        child: new Card(
          child: Column(
            children: <Widget>[
              new Container(
                child:ListTile(
                  title: Text('1、关于程序',style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: Text('这是一个新闻程序'),
                  leading:new Icon(Icons.description,color: Colors.lightBlue),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
              new Container(
                child:ListTile(
                  title: Text('2、按键指引',style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: Text('.......'),
                  leading:new Icon(Icons.description,color: Colors.lightBlue),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ],
          ),
        ),
//        child: Text(
//          '不复知有我安知物为贵，知身不是我，烦恼又何侵-菜根谭',
//          textAlign: TextAlign.start, // 对齐
//            style: TextStyle(
//              fontSize: 25.0, //字体大小
//              color: Colors.black,
//              decoration: TextDecoration.underline, // 加下划线
//              decorationStyle: TextDecorationStyle.solid,
//            ),
//        ),
      ),
        bottomNavigationBar:BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              title: Text("首页", style: TextStyle(color: Colors.grey)),
              icon: IconButton(color: Colors.grey,
                icon: Icon(Icons.chevron_left),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>NewsPage()));
                } ,),
            ),
            BottomNavigationBarItem(
              title: Text("关注", style: TextStyle(color: Colors.grey)),
              icon: IconButton(color: Colors.grey,
                icon: Icon(Icons.art_track),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailNewsPage()));
                } ,),),
            BottomNavigationBarItem(
              title: Text("我的", style: TextStyle(color: Colors.grey)),
              icon: IconButton(color: Colors.grey,
                icon: Icon(Icons.person),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>person_inform()));
                } ,),),
          ],
        )
    );
  }
}

