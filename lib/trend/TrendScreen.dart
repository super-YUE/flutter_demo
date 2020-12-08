import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TrendScreen extends StatelessWidget {


  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('动态'), 
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                saveData();
              },
              child: new Text('存储数据'),
            ),
            FlatButton(
              onPressed: (){
                readData();
              }, 
              child: new Text('读取数据')
            )
          ], 
        )
      ),
    );
  }

  saveData() async{
    final SharedPreferences pref = await _prefs;
    pref.setString('somthinfKey', '存储的数据');
  }

  readData() async{
    final SharedPreferences pref = await _prefs;
    String content = pref.getString('somthinfKey');
    print(content);
  }
}