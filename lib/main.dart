import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quote_generator/Service/quote_class.dart';
import 'Home/home.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => QuoteClass(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home());
  }
}
