import 'package:flutter/material.dart';
import 'package:flutter_project/WelcomPage.dart';
import 'package:flutter_project/find/companyDetail/CompanyDetailScreen.dart';
import 'package:flutter_project/find/companyDetail/ThirdScreen.dart';
import 'package:flutter_project/home.dart';
import 'package:flutter_project/provider/find_list.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => FindListProvider())
    ],
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: FlowerApp(),
      home: WelcomPage(),
      routes: {
        '/third':(BuildContext context) {
          return ThirdScreen();
        }
      },
    );
  }
}