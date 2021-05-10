import 'package:flutter/material.dart';
import 'package:flutter_app/Li5120182242/_user_classfy.dart';
import 'package:flutter_app/Li5120182242/_login_2242.dart';

void main() => runApp(MyRegisterApp());

class MyRegisterApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new _MyRegisterAppState();
  }
}

class _MyRegisterAppState extends State<MyRegisterApp>{
  void _changeTextContent(){
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.orange,
      ),
      title: 'demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('注册页面'),
          leading: Icon(Icons.menu,size: 30.0,),
        ),
        body: new Center(
          child: Column(
            children: [
              _Register(),
              _CertainButtom(),
            ],
          ),
        ),
      ),
    );
  }

  bool _isShowPwd = false;

  TextEditingController _account = new TextEditingController();
  TextEditingController _pwd = new TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _Register() {
    return Container(
      margin: EdgeInsets.only(left: 20.0,right: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white
      ),
      child: Form(
        key: _formKey,
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextFormField(
//            autovalidate: true,
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '手机号',
              prefixIcon: Icon(Icons.person),
            ),
            validator: (v){
              if (v.trim().length == 0){
                return '用户名不能为空';
              }else if(v.trim().length != 11){
                return '用户名为11位手机号';
              }else{
                return null;
              }
            },
            controller: _account,
          ),

          SizedBox(height: 10.0),

          TextFormField(
//            autovalidate: true,
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
                return null;
              }
            },
            controller: _pwd,
          )
        ],
      )),
    );
  }

  Widget _CertainButtom() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: RaisedButton(
        color: Colors.lightBlue,
        child: Text(
          '完成',
          style: TextStyle(color: Colors.white),
        ),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        onPressed: (){

          if (_formKey.currentState.validate()){
            User new_user = new User(_account.text, _pwd.text);
            user_list.add(new_user);
            Navigator.push(context, MaterialPageRoute(builder:(context)=>login2242()));
          }
        },
      ),
    );
  }
}



