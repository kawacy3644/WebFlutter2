import 'package:flutter/material.dart';
import 'package:flutter_app/Li5120182242/_news_page.dart';
import 'package:flutter_app/Li5120182242/_person_information.dart';

class DetailNews extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'DetailNews Page',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: DetailNewsPage(),
    );
  }
}

class DetailNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新闻详情'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0), // 容器的外边距：容器距离页面的距离
        decoration: new BoxDecoration(
          color: Colors.black12,
          //设置四周圆角 角度
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          //设置四周边框
          border: new Border.all(width: 1, color: Colors.orange),
        ),
        child: new Column(
            children: <Widget>[
              Image.asset('lib/Li5120182242/assets/nier.png',height: 200,),
              Text('《尼尔》的最新作《尼尔：伪装者ver.1.22474487139...》刚发售的游戏热度当然很高，游戏依旧位居榜排行，位居第五名。'
                  '主角是一位住在边境村庄的善良少年，他为了拯救罹患不治之症“黑文病”的妹妹“悠娜”，与会说人话的神秘书本“白之书”'
                  '一起踏上旅程，找寻治疗妹妹的最后一线希望——“被封印的话语”。',
                style: TextStyle(
                  fontSize: 15.0, //字体大小
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ]
        ),
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

