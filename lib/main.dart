import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:house_of_icecream/component/cartpage.dart';
import 'package:house_of_icecream/component/creamshop.dart';
import 'package:house_of_icecream/component/homepage.dart';
import 'package:house_of_icecream/intro.dart';
import 'package:house_of_icecream/screen/screen1.dart';
import 'package:house_of_icecream/screen/screen3.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreamShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: Screen3(),
        initialRoute: 'Intro',
        routes: {
          'Intro': (context) => const Intro(),
          'Screen1': (context) => const Screen1(),
          'HomePage': (context) => const HomePage(),
          'CartPage': (context) => const CartPage(),
          'Screen3': (context) => const Screen3(),
        },
      ),
    );
  }
}
