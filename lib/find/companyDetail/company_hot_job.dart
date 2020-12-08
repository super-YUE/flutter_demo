import 'package:flutter/material.dart';

class CompanyHotJob extends StatelessWidget {
  const CompanyHotJob({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: new Row(
        children: <Widget>[
          RichText(
              text: new TextSpan(
            text: '敬请期待',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ))
        ],
      ),
    ));
  }
}
