import 'package:flutter/material.dart';
import 'package:flutter_app/Li5120182242/_news_page.dart';
import 'package:flutter_app/Li5120182242/_detail_news.dart';

class person_inform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Person Page',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: _personal_inform(),
    );
  }
}

class _personal_inform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('个人信息页'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _person_profile(),
            _person_detail(),
          ],
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
               } ,),),
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

  Widget _person_profile(){
    return Container(
      margin:EdgeInsets.only(top:15),
      child: Row(
        //方向对齐
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            width: 15.0,
          ),
          new ClipOval(
              child:new SizedBox(
                width: 75.0,
                height: 75.0,
                child: Image.asset('lib/Li5120182242/assets/user-head.jpg',
                  fit: BoxFit.fill,),
              )
          ),
          new Container(
            width: 20.0,
          ),
          new Column(
            children: [
              new Text('lv3 紧跟事实',
                style: TextStyle(fontSize:20.0,fontWeight: FontWeight.w600,)
              ) ,
              new SizedBox(
                height: 6.0,
                width: 270,
                child: new LinearProgressIndicator(
    //0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
                value: 0.3,
                backgroundColor: Colors.greenAccent,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.black12)),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _person_detail(){
    return Card(
      child: Column(
        children: <Widget>[
          new Container(
            height: 60.0,
            child:ListTile(
              title: Text('昵称',style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text('知有我'),
              leading:new Icon(Icons.account_box,color: Colors.lightBlue),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
//          new Divider(),
          new Container(
            height: 60.0,
            child:ListTile(
              title: Text('账号',style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text('070716007'),
              leading:new Icon(Icons.account_circle,color: Colors.lightBlue),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
//          new Divider(),
          new Container(
            height: 60.0,
            child:ListTile(
              title: Text('金币',style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text('100.0'),
              leading:new Icon(Icons.account_balance_wallet,color: Colors.lightBlue),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ],
      ),
    );
  }

}


  