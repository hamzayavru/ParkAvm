import 'package:flutter/material.dart';
import 'package:park_avm/yonlendirme.dart';

import 'feature/anasayfa/view/anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.white
        ),
        primarySwatch: Colors.blue,
      ),
      home: const DirectionPage(),
    );
  }
}

