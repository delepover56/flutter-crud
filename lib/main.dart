import 'package:crud_app/Screens/delete.dart';
import 'package:crud_app/Screens/edit.dart';
import 'package:crud_app/Screens/homepage.dart';
import 'package:crud_app/Screens/list.dart';
import 'package:crud_app/Screens/login.dart';
import 'package:crud_app/Screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Crud App',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/delete': (context) => const DeletePage(),
        '/list': (context) => const ListPage(),
        '/edit': (context) => const EditPage(),
      },
    );
  }
}
