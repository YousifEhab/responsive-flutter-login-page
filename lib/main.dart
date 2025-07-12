import 'package:flutter/material.dart';
import 'themes/theme.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'pages/home_page.dart';
import 'pages/forgot_password.dart';
import 'pages/reset_password.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final materialTheme = MaterialTheme(Theme.of(context).textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: materialTheme.light(),
      initialRoute: '/login',
      routes: {
        '/forgotPassword': (context) => ForgotPassword(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/resetPassword': (context) => ResetPassword(),
      },
    );
  }
}
