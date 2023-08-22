import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:residential_parking/src/MyColors.dart';
import 'package:residential_parking/src/providers/user_provider.dart';
import 'package:residential_parking/src/widgets/Login.dart';
import 'package:residential_parking/src/widgets/Home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const Login(title: 'Login'),
          '/home': (context) =>
              const DefaultTabController(length: 5, child: Home()),
        },
        theme: ThemeData(
            primarySwatch: MyMaterialColor.mycolor, fontFamily: 'K2D'),
      ),
    );
  }
}
