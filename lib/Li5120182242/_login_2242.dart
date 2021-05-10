import 'package:flutter/material.dart';
import 'package:flutter_app/Li5120182242/_news_page.dart';
import 'package:flutter_app/Li5120182242/_forget_page.dart';
import 'package:flutter_app/Li5120182242/_register_page.dart';
import 'package:flutter_app/Li5120182242/_user_classfy.dart';

void main() => runApp(login2242());

class login2242 extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new _LoginPage();
  }
}

class _LoginPage extends State<login2242>{
  void _changeTextContent(){
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My Page',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('欢迎登录'),
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(
                    minWidth: double.infinity,
                    minHeight: double.infinity),
                child: Image.asset('lib/Li5120182242/assets/background.jpg',
                  fit: BoxFit.cover,),
              ),
              ListView(
                children: <Widget>[
                  _head_profile(),
                  Container(
                    height: 20.0,
                  ),
                  _accountTextField(),
                  _forgetPwd(),
                  _buttomLogin(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextEditingController _account = new TextEditingController();
  TextEditingController _pwd = new TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isShowPwd = false;

  Widget _head_profile(){
    return Container(
      margin:EdgeInsets.only(top:30),
      alignment: Alignment.center,
      child: Column(
        //垂直方向对齐
        children: <Widget>[
          new ClipOval(
              child:new SizedBox(
                width: 150.0,
                height: 150.0,
                child: Image.asset('lib/Li5120182242/assets/headpic.jpg',
                  fit: BoxFit.fill,),
              )
          ),
        ],
      ),
    );
  }

  Widget  _accountTextField(){
    return Container(
      margin: EdgeInsets.only(left: 20.0,right: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
//              autovalidate: true,
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '手机号',
                prefixIcon: Icon(Icons.person),
              ),
              //校验用户名
              validator: (v){
                if (v.trim().length == 0){
                  return '用户名不能为空';
                }else if(v.trim().length != 11){
                  return '用户名为11位手机号';
                }else{
                  return null;
                }
              },
              //保持数据
              controller: _account,
            ),

            SizedBox(height: 10.0,),

            TextFormField(
//              autovalidate: true,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                prefixIcon: Icon(Icons.lock),
                //是否显示密码
                suffixIcon: IconButton(
                  icon: Icon(
                      _isShowPwd ? Icons.visibility : Icons.visibility_off
                  ),
                  onPressed: (){
                    setState(() {
                      _isShowPwd = !_isShowPwd;
                    });
                  },
                ),
              ),
              obscureText: !_isShowPwd,
              validator: (v){
                RegExp exp = RegExp('[a-zA-Z0-9_]{6,20}');
                if (v.trim().length == 0 ){
                  return '密码不能为空';
                }else if(!exp.hasMatch(v)){
                  return '请输入正确的6-20位数字、字母或下划线的密码';
                }else{
                  showDialog(context: context,
                    builder: (ctx){
                      return AlertDialog(
                        title: Text('登录失败'),
                        content: Text('账号密码不匹配'),
                      );
                    } );
//                  return null;
                }
              },
              controller: _pwd,
            )
          ],
        ),
      ),
    );
  }

  Widget _forgetPwd(){
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Forget()));
            },
            child: Text(
              "忘记密码?",
              style: TextStyle(color: Colors.white),
            ),)
        ],
      ),
    );
  }

  Widget _buttomLogin(){
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              color: Colors.lightBlue,
              child: Text(
                '登录',
                style: TextStyle(color: Colors.white),
              ),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              onPressed: (){
                if (_formKey.currentState.validate()){
                  int i;
                  for(i=0;i<user_list.length;i++){
                    if(user_list[i].user_num == _account.text){
                      break;
                    }
                  }
                  if(  _pwd.text == user_list[i].user_pwd){
//            _formKey.currentState.save();
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>NewsPage()));
                  }
                }
              },
            ),
          ),
          Container(
            width: 10.0,
          ),
          Expanded(
            child: RaisedButton(
              color: Colors.white,
              child: Text(
                '注册',
                style: TextStyle(color: Colors.lightBlue),
              ),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>MyRegisterApp()));
              },
            ),
          )
        ],
      ),
    );
  }

//  String validateUserName(String value){
//    if (value.isEmpty){
//      return '用户名不能为空';
//    }else{
//      return null;
//    }
//  }
//
//  String validatePassWord(String pwd){
//    RegExp exp = RegExp('[a-zA-Z0-9_]{6,20}');
//    if (pwd.isEmpty){
//      return '密码不能为空';
//    }else if (!exp.hasMatch(pwd)){
//      return '请输入正确的6-20位数字、字母或下划线的密码';
//    }else{
//      return null;
//    }
//  }

}

