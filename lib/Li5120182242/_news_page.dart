import 'package:flutter/material.dart';
import 'package:flutter_app/Li5120182242/_detail_introduction.dart';
import 'package:flutter_app/Li5120182242/_person_information.dart';
import 'package:flutter_app/Li5120182242/_detail_news.dart';

class news_page extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My Page',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: NewsPage(),
    );
  }
}

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Daily News'),
        leading: IconButton(
          icon: Icon(Icons.description),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>detailIntroduction()));
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.art_track),
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>person_inform()));
              } ,
          )
        ],
      ),
      body: Container(
        child:new MyButtonWidget(),
        ),

    );
  }
}

class MyButtonWidget extends StatelessWidget {
  int count = 0;
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '热门',),
              Tab(text:'推荐',),
              Tab(text: '关注',),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                new News1_Item(),
                new News2_Item(),
                new News3_Item(),
                new News4_Item(),
              ],
            ),
            ListView(
              children: <Widget>[
                new News2_Item(),
              ],
            ),
            ListView(
              children: <Widget>[
                new News2_Item(),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.pink,
          type: BottomNavigationBarType.fixed,
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
        ),
      ),
    );
  }
}

class News1_Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
                  '主角是一位住在边境村庄的善良少年，他为了拯救罹患不治之症“黑文病”的妹妹“悠娜”，与会说人话的神秘书本“白之书”一起踏上旅程，找寻治疗妹妹的最后一线希望——“被封印的话语”。',
                style: TextStyle(
                  fontSize: 15.0, //字体大小
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ]
        ),
      ),
      onLongPress: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailNews()));
      },
    );
  }
}

class News2_Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
              Image.asset('lib/Li5120182242/assets/news1.png',height: 200,),
              Text('5月1日下午4点左右，在惠州大亚湾黄金海岸，一名男子躺在沙滩上，几名医护人员正在为其进行急救。'
                  '景区工作人员谢先生表示 ：“网传的内容不实，救生员救起他的时候，他已经没有意识了。应急通道也打开了，由医生、特警、公安各方面协调现场施救，五个医生轮流施救，近一个小时的时间做心肺复苏，最终都没有救回来。”',
                style: TextStyle(
                  fontSize: 15.0, //字体大小
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ]
        ),
      ),
//      onTap: (){
//        Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailNews()));
//      },
    );
  }
}

class News3_Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
              Image.asset('lib/Li5120182242/assets/news2.png',height: 200,),
              Text('5月4日据媒体报道，广州中医药大学8旬退休教授肖鑫和长期将课酬、诊金等捐给贫困学子，'
                  '总额70万。但他一件衬衫穿了18年，二手自行车骑了26年，他说求学时妈妈去世，尝尽贫穷滋味，从此下决心有本事一定要帮贫困学生。',
                style: TextStyle(
                  fontSize: 15.0, //字体大小
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ]
        ),
      ),
//      onTap: (){
//        Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailNews()));
//      },
    );
  }
}
class News4_Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
              Image.asset('lib/Li5120182242/assets/news4.jpeg',height: 200,),
              Text('这两天，为打投偶像而倒奶的事引发网友强烈批评。粉丝购买赞助商奶制品后，扫描瓶盖内的二维码才能为偶像助力。'
                  '买得越多助力越多，喝不完又转卖不了，直接倒掉便成了最“快捷”的处理方式。偶像能不能出道不得而知，但可以预见的是，'
                  '节目组和赞助商却获得了高热度和巨大收益。',
                style: TextStyle(
                  fontSize: 15.0, //字体大小
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ]
        ),
      ),
//      onTap: (){
//        Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailNews()));
//      },
    );
  }
}

