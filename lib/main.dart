import 'package:flutter/material.dart';
import 'package:input/addition.dart';
import 'package:input/divide.dart';
import 'package:input/mod.dart';
import 'package:input/result.dart';
import 'package:input/substractioon.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: result(),
    );
  }
}
