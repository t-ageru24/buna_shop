import 'package:buna_shop/authenth/signUp_page.dart';
import 'package:buna_shop/pages/welcome_page.dart';
import 'package:buna_shop/models/coffee_shop.dart';
import 'package:buna_shop/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:buna_shop/authenth/login_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build (BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child)=> const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomePage(),//Replace LoginPage() with  HomePage()
      ),
    );
  }
}